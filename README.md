# Análisis de la eficiencia comercial y la mora de la cartera

## Contexto
En el sector bancario, la productividad comercial de los asesores suele medirse principalmente por el volumen de colocaciones. Sin embargo, una alta productividad no siempre garantiza una cartera saludable, ya que puede estar asociada a mayores niveles de mora y mayor riesgo crediticio.

Este proyecto analiza la relación entre la eficiencia comercial de los asesores y el comportamiento de pago de la cartera crediticia, con el objetivo de apoyar la toma de decisiones comerciales y de gestión del riesgo.

---

## Objetivo del proyecto
Evaluar la relación entre la productividad de los asesores comerciales y el nivel de mora de la cartera crediticia, identificando patrones que permitan mejorar la gestión comercial sin afectar la calidad del portafolio.

---

## Preguntas de negocio
- ¿Los asesores más productivos generan mayor nivel de mora?
- ¿Qué asesores combinan alta productividad con baja mora?
- ¿Existen diferencias relevantes por zona geográfica o período?
- ¿Qué indicadores permiten monitorear eficiencia comercial y riesgo de forma conjunta?

---

## Principales KPIs
- Número de colocaciones por asesor  
- Monto total colocado  
- Ticket promedio de crédito  
- Cartera activa  
- Cartera en mora  
- Porcentaje de mora  
- Relación productividad vs mora  

---

## Fuentes de datos
- Base de colocaciones de créditos  
- Base de pagos y estado de cartera  
- Información de asesores y zonas  

*(Datos simulados con lógica real del sector bancario, basados en experiencia laboral)*

---

## Herramientas utilizadas
- **SQL**: creación de tablas y consultas para análisis  
- **Excel / Power Query**: limpieza, transformación y validación de datos  
- **Power BI**: modelado de datos, creación de medidas DAX y visualización  

---

## Análisis y resultados
El análisis de los datos evidencia que una mayor productividad comercial no siempre se traduce en una cartera con mejor comportamiento de pago. Se identificaron asesores con altos niveles de colocación que, a su vez, presentan porcentajes de mora superiores al promedio, lo que sugiere un desbalance entre el cumplimiento de objetivos comerciales y la evaluación del riesgo crediticio.

Asimismo, el análisis por asesor permitió identificar perfiles eficientes, caracterizados por mantener un buen nivel de colocaciones con baja mora, así como casos donde un menor volumen colocado concentra un mayor nivel de riesgo. Este hallazgo refuerza la importancia de evaluar el desempeño comercial más allá del monto colocado.

Desde una perspectiva de segmentación, el segmento corporativo concentra el mayor monto total colocado, mientras que los segmentos Pyme y Microempresa presentan mayor variabilidad en los indicadores de mora, lo que sugiere la necesidad de estrategias de seguimiento diferenciadas según el tipo de cartera.

Finalmente, el análisis por cliente muestra que el capital en riesgo no se distribuye de manera homogénea, sino que se concentra en un grupo reducido de clientes con alta antigüedad de mora, permitiendo priorizar acciones de cobranza y gestión preventiva.

---

## Conclusiones
- La productividad comercial debe analizarse en conjunto con indicadores de riesgo crediticio.  
- Existen asesores que logran un equilibrio sostenible entre colocación y calidad de cartera.  
- El monitoreo segmentado por asesor, zona y tipo de cartera mejora la toma de decisiones comerciales.  
- El uso de dashboards facilita la identificación temprana de focos de riesgo en la cartera.

---

## Acciones recomendadas a gerencia
1. Incorporar indicadores de calidad de cartera en la evaluación del desempeño comercial.  
2. Definir metas diferenciadas según perfil de riesgo, tipo de cartera y zona geográfica.  
3. Implementar seguimiento específico a asesores con alta colocación y mayor nivel de mora.  
4. Priorizar la gestión preventiva de la mora, enfocándose en clientes con mayor capital en riesgo.  
5. Utilizar el dashboard como herramienta de control recurrente para gerencia y jefaturas comerciales.

---

## Limitaciones del análisis y próximos pasos
El análisis se desarrolló a partir de datos simulados con lógica real del sector bancario, por lo que los resultados representan tendencias referenciales. Asimismo, el estudio se basa en información histórica y no incorpora variables externas como estacionalidad, condiciones macroeconómicas o cambios regulatorios.

Como próximos pasos, el proyecto podría ampliarse incorporando modelos de alertas tempranas de mora, segmentación avanzada de clientes por perfil de riesgo o análisis predictivo para anticipar el deterioro de la cartera.

---
### 🔹 Power BI – Vista general
En esta vista se presenta un resumen del estado de la cartera crediticia, incluyendo los principales KPIs comerciales y de riesgo. Permite evaluar rápidamente el nivel de colocación, la cartera activa y el porcentaje de mora, ofreciendo una visión global del desempeño comercial.

![Power BI General](powerbi/imagenes/PowerBI_General.png)

---

### 🔹 Power BI – Análisis por asesor
Esta vista permite analizar el desempeño individual de los asesores comerciales, comparando su productividad con el nivel de mora generado. Facilita la identificación de asesores con alta eficiencia y bajo riesgo, así como casos que requieren seguimiento.

![Power BI por Asesor](powerbi/imagenes/PowerBI_Asesor.png)

## Estado del proyecto
✅ **Proyecto finalizado**
