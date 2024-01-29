from django.db import models


class Departamento(models.Model):
    departamento = models.CharField(max_length=255)

    class Meta:
        db_table = 'tbl_departamentos'
        ordering = ['departamento']

    def __str__(self):
        return f'Dep: {self.departamento}'


class Municipio(models.Model):
    municipio = models.CharField(max_length=255)
    departamento = models.ForeignKey(
        Departamento, on_delete=models.SET_NULL, null=True, db_column='departamento_id')  # Ajuste aquí

    class Meta:
        db_table = 'tbl_municipios'
        ordering = ['municipio']

    def __str__(self):
        return f'Municipio: {self.municipio} - Dep: {self.departamento}'


class Zona(models.Model):
    id_zona = models.AutoField(primary_key=True)
    zona = models.CharField(max_length=255)
    municipio = models.ForeignKey(
        Municipio, on_delete=models.SET_NULL, null=True, db_column='municipio_id')

    class Meta:
        db_table = 'tbl_zonas'
        ordering = ['zona']

    def __str__(self):
        return f'Zona: {self.zona}'
