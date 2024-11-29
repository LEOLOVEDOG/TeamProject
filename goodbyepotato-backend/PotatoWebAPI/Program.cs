using PotatoWebAPI.Models;
using Microsoft.EntityFrameworkCore;
using MailKit;
using PotatoWebAPI;
using Microsoft.Extensions.FileProviders;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddDbContext<GoodbyepotatoContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("goodbyepotato")));
builder.Services.AddScoped<SendEmail>();

//�]�w�}�����
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll",
        builder => builder.WithOrigins("http://localhost:5173", "http://127.0.0.1:5501").SetIsOriginAllowedToAllowWildcardSubdomains()
                .AllowAnyHeader()
                .AllowAnyMethod());
});


//�֨�
builder.Services.AddControllers(); // �[�J MVC ����A��
builder.Services.AddMemoryCache(); // �[�J���s�֨��A��

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
//�B�z�R�A���
builder.Services.AddDirectoryBrowser(); // ���\�s���ؿ�

var app = builder.Build();

app.UseCors("AllowAll");

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

// ���R�A���K�[CORS�Y
app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(Path.Combine(Directory.GetCurrentDirectory(), "..", "goodbyecouchpotato", "wwwroot")),
    RequestPath = "/static-content",
    OnPrepareResponse = ctx =>
    {
        ctx.Context.Response.Headers.Append("Access-Control-Allow-Origin", "http://localhost:5173");
    }
});

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
