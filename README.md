# 🚀 Instalador Automático de n8n

Este script permite instalar y configurar **n8n**, una herramienta de automatización de flujos de trabajo de código abierto, de manera rápida y sencilla en sistemas basados en Linux.

## 🛠️ Requisitos

Antes de ejecutar el script, asegúrate de contar con:

- ✅ **Sistema operativo:** Ubuntu, Debian, Fedora o RHEL  
- ✅ **Permisos de sudo o root**  
- ✅ **Docker y Docker Compose instalados** (el script puede instalarlos si no están presentes)  

## 📌 Instalación

Sigue estos pasos para ejecutar el script:

1. **Clona este repositorio:**  
   ```bash
   git clone https://github.com/harvingarcia/n8n-auto-install.git
   cd n8n-auto-install

Asigna permisos de ejecución al script:
chmod +x install_n8n.sh

Ejecuta el script:
./install_n8n.sh


🔍 ¿Qué hace este script?
✅ Verifica si Docker y Docker Compose están instalados, y los instala si es necesario.
✅ Descarga la imagen de n8n y configura un contenedor en Docker.
✅ Crea un volumen persistente para los datos de n8n.
✅ Levanta el servicio de n8n automáticamente.

🚀 Opciones avanzadas
Si deseas personalizar el despliegue, puedes modificar el archivo install_n8n.sh para ajustar opciones como:

Puerto predeterminado (5678)
Volumen de datos persistentes
Configuraciones adicionales de Docker
📝 Notas
Si quieres que n8n arranque automáticamente después de un reinicio, revisa la configuración de docker-compose o systemd.
Para desplegar en producción, considera habilitar HTTPS con un proxy inverso como Nginx o Traefik.
📚 Referencias
🌐 Página oficial de n8n: https://n8n.io/
📖 Documentación de n8n: https://docs.n8n.io/
