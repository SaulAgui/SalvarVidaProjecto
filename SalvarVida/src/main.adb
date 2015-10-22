with Ada.Text_IO, Ada.Integer_Text_IO; use Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

procedure Main is

   task RitmoCardiaco;

   task PresionArterialSistolica;

   task PresionArterialAsistolica;

   task Temperatura;

   task FrecuenciaRespiratoria;
-----------------------------------------------------------------------------------------

   task body RitmoCardiaco is
      subtype rango is Integer range 68..77;
      package randomPresion is new Ada.Numerics.Discrete_Random(rango);
      use randomPresion;
      g: randomPresion.Generator;
      ele : Integer;
   begin
         for i in 0..100 loop
         ele := Random(g);
         if ele < 70 then
            Put("ALARMA Ritmo Cardiaco bajo");
            Put(ele);
            Put_Line("");
         else
            if ele > 75 then
               Put("ALARMA Ritmo Cardiaco alto");
               Put(ele);
               Put_Line("");
            end if;
         end if;
         if ele >= 70 and ele <= 75 then
               Put("Ritmo Cardiaco normal");
               Put(ele);
               Put_Line("");
         end if;
         delay 1.0;
         end loop;
   end RitmoCardiaco;

   task body PresionArterialSistolica  is
      subtype rango is Integer range 110..150;
      package randomPresion is new Ada.Numerics.Discrete_Random(rango);
      use randomPresion;
      g: randomPresion.Generator;
      ele : Integer;
   begin
      for i in 0..100 loop
         ele := Random(g);
         if ele < 120 then
            Put("ALARMA PresionArterial Sistolica bajo ");
            Put(ele);
            Put_Line("");
         else
            if ele > 140 then
               Put("ALARMA PresionArterial Sistolica alto");
               Put(ele);
               Put_Line("");
            end if;
         end if;
         if ele >= 120 and ele <= 140 then
            Put("Presion Arterial Sistolica normal");
            Put(ele);
            Put_Line("");
         end if;
         delay 1.0;
      end loop;
   end PresionArterialSistolica;

   task body PresionArterialAsistolica is
      subtype rango is Integer range 77..93;
      package randomPresion is new Ada.Numerics.Discrete_Random(rango);
      use randomPresion;
      g: randomPresion.Generator;
      ele : Integer;
   begin
      for i in 0..100 loop
         ele := Random(g);
         if ele < 80 then
            Put("ALARMA Presion Arterial Asistolica bajo");
            Put(ele);
            Put_Line("");
         else
            if ele > 90 then
               Put("ALARMA Presion Arterial Asistolica alto");
               Put(ele);
               Put_Line("");
            end if;
         end if;

         if ele >= 80 and ele <= 90 then
            Put("Presion Arterial Asistolica normal");
            Put(ele);
            Put_Line("");
         end if;
         delay 1.0;
         end loop;   end PresionArterialAsistolica;

   task body Temperatura is
      subtype rango is Integer range 35..39;
      package randomPresion is new Ada.Numerics.Discrete_Random(rango);
      use randomPresion;
      g: randomPresion.Generator;
      ele : Integer;
   begin
      for i in 0..100 loop
         ele := Random(g);
         if ele < 36 then
            Put("ALARMA Temperatura baja");
            Put(ele);
            Put_Line("");
         else
            if ele > 38 then
               Put("ALARMA Temperatura alta");
               Put(ele);
               Put_Line("");
            end if;
         end if;
         if ele >= 36 and ele <= 38 then
            Put("Temperatura normal");
            Put(ele);
            Put_Line("");
         end if;
         delay 1.0;
      end loop;
   end Temperatura;

   task body FrecuenciaRespiratoria is
      subtype rango is Integer range 8..23;
      package randomPresion is new Ada.Numerics.Discrete_Random(rango);
      use randomPresion;
      g: randomPresion.Generator;
      ele: Integer;
   begin
      for i in 0..100 loop
         ele := Random(g);
         if ele < 12 then
            Put("ALARMA Frecuencia Respiratoria bajo");
            Put(ele);
            Put_Line("");
         else
            if ele > 20 then
               Put("ALARMA Frecuencia Respiratoria alto");
               Put(ele);
               Put_Line("");
            end if;
         end if;
         if ele >= 12 and ele <= 20 then
            Put("Frecuencia Respiratoria normal");
            Put(ele);
            Put_Line("");
         end if;
         delay 1.0;
      end loop;
   end FrecuenciaRespiratoria;

begin
   null;
end Main;
