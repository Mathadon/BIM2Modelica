within ModelicaModels.IFC2X3.SBT_Unit_Test_Cases;
model AWS3_SB
  "Model of a building with its climate ambient"
  extends Modelica.Icons.Example;

  record Construction1
    extends BuildingSystems.Buildings.Data.Constructions.OpaqueThermalConstruction(
      nLayers=1,
      thickness={
        0.2
      },
      material={
        BuildingSystems.HAM.Data.MaterialProperties.Thermal.Masea.Concrete()
      });
  end Construction1;
  record Construction2
    extends BuildingSystems.Buildings.Data.Constructions.OpaqueThermalConstruction(
      nLayers=1,
      thickness={
        0.3
      },
      material={
        BuildingSystems.HAM.Data.MaterialProperties.Thermal.Masea.Concrete()
      });
  end Construction2;

  model Building
    "Automatically generated multi-zone building model"
    extends BuildingSystems.Buildings.BaseClasses.BuildingTemplate(
    nZones = 2,
    surfacesToAmbient(nSurfaces = 9),
    nSurfacesSolid = 0,
    surfacesToSolids(nSurfaces = nSurfacesSolid),
    convectionOnSurfaces = BuildingSystems.HAM.ConvectiveHeatTransfer.Types.Convection.forced,
    useAirPaths = false,
    heatSources = true,
    nHeatSources = 2);

    BuildingSystems.Buildings.Zones.ZoneTemplateAirvolumeMixed zone_1(
      V=1381.3600000000006,
      height=3.0,
      nConstructions=13,
      heatSources=true,
      nHeatSources=1);
    BuildingSystems.Buildings.Zones.ZoneTemplateAirvolumeMixed zone_2(
      V=149.71999999999997,
      height=3.0,
      nConstructions=6,
      heatSources=true,
      nHeatSources=1);

    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_1(
      redeclare Construction1 constructionData,
      angleDegAzi = -90.0,
      angleDegTil = 90.0,
      AInnSur = 17.6,
      height = 7.8,
      width = 10.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_2(
      redeclare Construction1 constructionData,
      angleDegAzi = 180.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 7.8,
      width = 20.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_3(
      redeclare Construction1 constructionData,
      angleDegAzi = 0.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 3.8,
      width = 9.85);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_4(
      redeclare Construction1 constructionData,
      angleDegAzi = 180.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 3.8,
      width = 9.85);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_5(
      redeclare Construction1 constructionData,
      angleDegAzi = 0.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 7.8,
      width = 20.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_6(
      redeclare Construction1 constructionData,
      angleDegAzi = 90.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 7.8,
      width = 10.000000000000007);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_7(
      redeclare Construction2 constructionData,
      angleDegAzi = -90.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 3.8,
      width = 4.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_1(
      redeclare Construction1 constructionData,
      angleDegAzi = 0.0,
      angleDegTil = 180.0,
      AInnSur = 0.0,
      height = 10.000000000000007,
      width = 20.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_2(
      redeclare Construction1 constructionData,
      angleDegAzi = 0.0,
      angleDegTil = 0.0,
      AInnSur = 44.66,
      height = 10.000000000000007,
      width = 20.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_3(
      redeclare Construction1 constructionData,
      angleDegAzi = -90.00000000000001,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 0.20000000000000018,
      width = 4.3999999999999995);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_4(
      redeclare Construction1 constructionData,
      angleDegAzi = -180.0,
      angleDegTil = 90.0,
      AInnSur = -0.0,
      height = 0.20000000000000018,
      width = 10.15);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_5(
      redeclare Construction1 constructionData,
      angleDegAzi = 0.0,
      angleDegTil = 0.0,
      AInnSur = 0.0,
      height = 4.0,
      width = 9.85);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_6(
      redeclare Construction1 constructionData,
      angleDegAzi = -0.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 0.20000000000000018,
      width = 10.15);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes wall_8(
      redeclare Construction1 constructionData,
      angleDegAzi = -90.0,
      angleDegTil = 90.0,
      AInnSur = 0.0,
      height = 3.8,
      width = 4.0);
    BuildingSystems.Buildings.Constructions.Walls.WallThermal1DNodes slab_7(
      redeclare Construction1 constructionData,
      angleDegAzi = 0.0,
      angleDegTil = 0.0,
      AInnSur = 0.0,
      height = 4.0,
      width = 9.85);

  equation
    // connections between construction elements and zones
    connect(wall_1.toSurfacePort_1, zone_1.toConstructionPorts[1]);
    connect(wall_2.toSurfacePort_1, zone_1.toConstructionPorts[2]);
    connect(wall_3.toSurfacePort_1, zone_1.toConstructionPorts[3]);
    connect(wall_4.toSurfacePort_1, zone_1.toConstructionPorts[4]);
    connect(wall_5.toSurfacePort_1, zone_1.toConstructionPorts[5]);
    connect(wall_6.toSurfacePort_1, zone_1.toConstructionPorts[6]);
    connect(wall_7.toSurfacePort_1, zone_1.toConstructionPorts[7]);
    connect(slab_1.toSurfacePort_1, zone_1.toConstructionPorts[8]);
    connect(slab_2.toSurfacePort_1, zone_1.toConstructionPorts[9]);
    connect(slab_3.toSurfacePort_1, zone_1.toConstructionPorts[10]);
    connect(slab_4.toSurfacePort_1, zone_1.toConstructionPorts[11]);
    connect(slab_4.toSurfacePort_2, zone_1.toConstructionPorts[12]);
    connect(slab_5.toSurfacePort_1, zone_1.toConstructionPorts[13]);
    connect(slab_6.toSurfacePort_1, zone_1.toConstructionPorts[14]);
    connect(slab_6.toSurfacePort_2, zone_1.toConstructionPorts[15]);
    connect(wall_3.toSurfacePort_2, zone_2.toConstructionPorts[1]);
    connect(wall_4.toSurfacePort_2, zone_2.toConstructionPorts[2]);
    connect(wall_7.toSurfacePort_2, zone_2.toConstructionPorts[3]);
    connect(slab_5.toSurfacePort_2, zone_2.toConstructionPorts[4]);
    connect(wall_8.toSurfacePort_1, zone_2.toConstructionPorts[5]);
    connect(slab_7.toSurfacePort_1, zone_2.toConstructionPorts[6]);
    // connections between construction elements and ambient
    connect(wall_1.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[1]);
    connect(wall_2.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[2]);
    connect(wall_5.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[3]);
    connect(wall_6.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[4]);
    connect(slab_1.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[5]);
    connect(slab_2.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[6]);
    connect(slab_3.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[7]);
    connect(wall_8.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[8]);
    connect(slab_7.toSurfacePort_2, surfacesToAmbient.toConstructionPorts[9]);
    // connections between construction elements and ground
  // Heating set temperature of each thermal zones
    connect(zone_1.T_setHeating, T_setHeating[1]);
    connect(zone_2.T_setHeating, T_setHeating[2]);
  // Cooling set temperatures of each thermal zones
    connect(zone_1.T_setCooling, T_setCooling[1]);
    connect(zone_2.T_setCooling, T_setCooling[2]);
  // airchange rates of each thermal zones
    connect(zone_1.airchange, airchange[1]);
    connect(zone_2.airchange, airchange[2]);
  // ambient temperature of each thermal zones
    connect(zone_1.TAirAmb, TAirAmb);
    connect(zone_2.TAirAmb, TAirAmb);
  // ambient moisture of each thermal zones
    connect(zone_1.xAirAmb, xAirAmb);
    connect(zone_2.xAirAmb, xAirAmb);
  // Cooling load of each thermal zones
    connect(zone_1.Q_flow_cooling, Q_flow_cooling[1]);
    connect(zone_2.Q_flow_cooling, Q_flow_cooling[2]);
  // Heating load of each thermal zones
    connect(zone_1.Q_flow_heating, Q_flow_heating[1]);
    connect(zone_2.Q_flow_heating, Q_flow_heating[2]);
  // Radiative heating source of each thermal zones
    connect(zone_1.radHeatSourcesPorts[1], radHeatSourcesPorts[1]);
    connect(zone_2.radHeatSourcesPorts[1], radHeatSourcesPorts[2]);
  // Convective heating source of each thermal zones
    connect(zone_1.conHeatSourcesPorts[1], conHeatSourcesPorts[1]);
    connect(zone_2.conHeatSourcesPorts[1], conHeatSourcesPorts[2]);
  end Building;

  Building building(
    nZones = 2)
    annotation (Placement(transformation(extent={{10,-10},{30,10}})));

  BuildingSystems.Buildings.Ambient ambient(
    nSurfaces = building.nSurfacesAmbient,
    redeclare block WeatherData = BuildingSystems.Climate.WeatherDataMeteonorm.Germany_Berlin_Meteonorm_ASCII)
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    // Heating set temperature of the thermal zones
    Modelica.Blocks.Sources.Constant TSetHeating_zone_1(k=273.15 + 20.0);
    Modelica.Blocks.Sources.Constant TSetHeating_zone_2(k=273.15 + 20.0);
    // Cooling set temperature of each thermal zones
    Modelica.Blocks.Sources.Constant TSetCooling_zone_1(k=273.15 + 24.0);
    Modelica.Blocks.Sources.Constant TSetCooling_zone_2(k=273.15 + 24.0);
    // Air change rate of each thermal zones
    Modelica.Blocks.Sources.Constant airchange_zone_1(k=0.5);
    Modelica.Blocks.Sources.Constant airchange_zone_2(k=0.5);
    // Heating source of each thermal zones
    Modelica.Blocks.Sources.Constant heatsources_zone_1(k=0.0);
    Modelica.Blocks.Sources.Constant heatsources_zone_2(k=0.0);
    Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heatFlow[2];
    BuildingSystems.Buildings.BaseClasses.RelationRadiationConvection relationRadiationConvection[2](each radiationportion = 0.5);
  equation
    connect(ambient.toSurfacePorts, building.toAmbientSurfacesPorts)
      annotation (Line(points={{-12,4},{11,4}},color={0,255,0},smooth=Smooth.None));
    connect(ambient.toAirPorts, building.toAmbientAirPorts)
      annotation (Line(points={{-12,-4},{11,-4}},color={85,170,255},smooth=Smooth.None));
    connect(ambient.TAirRef, building.TAirAmb)
      annotation (Line(points={{-28.2,7},{-30,7},{-30,12},{-30,14},{26.2,14},{26.2,9.8}}, color={0,0,127}));
    connect(ambient.xAir, building.xAirAmb)
      annotation (Line(points={{-28.2,5},{-32,5},{-32,16},{28.4,16},{28.4,9.8}}, color={0,0,127}));
    // Heating set temperature of each thermal zones
    connect(TSetHeating_zone_1.y, building.T_setHeating[1]);
    connect(TSetHeating_zone_2.y, building.T_setHeating[2]);
    // Cooling set temperature of each thermal zones
    connect(TSetCooling_zone_1.y, building.T_setCooling[1]);
    connect(TSetCooling_zone_2.y, building.T_setCooling[2]);
    // Air change rate of each thermal zones
    connect(airchange_zone_1.y, building.airchange[1]);
    connect(airchange_zone_2.y, building.airchange[2]);
    // Heating source of each thermal zones
    connect(heatsources_zone_1.y, heatFlow[1].Q_flow);
    connect(heatsources_zone_2.y, heatFlow[2].Q_flow);
    connect(relationRadiationConvection.heatPort, heatFlow.port);
    connect(relationRadiationConvection.heatPortCv, building.conHeatSourcesPorts[1:2]);
    connect(relationRadiationConvection.heatPortLw, building.radHeatSourcesPorts[1:2]);

  annotation(experiment(StartTime=0, StopTime=31536000, __Dymola_Algorithm="Dassl"),
    __Dymola_Commands(file="modelica://ModelicaModels/Resources/Scripts/Dymola/IFC2X3/SBT_Unit_Test_Cases/AWS3_SB.mos" "Simulate and plot"),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})));

  end AWS3_SB;
