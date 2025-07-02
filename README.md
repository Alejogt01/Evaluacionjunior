# Evaluacionjunior
Adjunto Evaluación 

Prueba Técnica Filtrado de Productos por Categoría y Año

Este proyecto es una aplicación ASP.NET Core MVC que permite filtrar y visualizar productos vendidos en el año 2019, organizados por categoría.

Requisitos que se cumplieron: 
- Mostrar únicamente categorías con productos vendidos en 2019.
- Filtro de categorías mediante un DropDownList.
- Al seleccionar una categoría, se listan los productos vendidos en 2019 de esa categoría.
- Sin mostrar datos por defecto (solo cuando el usuario selecciona).

Tecnologias utilizadas
- ASP.NET Core MVC
- Entity Framework Core
- SQL Server
- LINQ
- C#

Estructuración del Proyecto
- Controllers/ProductosController.cs
- Models/Producto.cs, Categoria.cs, Venta.cs
- Views/Productos/Index.cshtml
- ViewModels/ProductosViewModel.cs

Consulta principal de LINQ

csharp
var categorias = _context.Categoria
    .Where(c => c.Productos.Any(p => p.Ventas.Any(v => v.Fecha.Year == 2019)))
    .Select(c => new SelectListItem
    {
        Value = c.CodigoCategoria.ToString(),
        Text = c.Nombre
    }).ToList();

¿Cómo se ejecuta?
- Clonar el repositorio
- Abrir el archivo .sln en VS
- Configurar su cadena de conexión en el archivo appsettings.json
- Ejecutar su aplicación
