This folder contains test data generated by the
JPL Horizons online tool:

https://ssd.jpl.nasa.gov/horizons.cgi

This is for testing Astronomy Engine calculations
of the positions of Jupiter's major 4 moons.

To reproduce this data, you need to create 4 files,
one for each moon, each designated with an integer index:

    0 = Io
    1 = Europa
    2 = Ganymede
    3 = Callisto

The files are named: jm0.txt ... jm3.txt.

Visit the JPL Horizons URL above in your browser
and select the following parameters:

Ephemeris Type: VECTORS

Target Body:
    jm0.txt = MB: Io (JI) [501]
    jm1.txt = MB: Europa (JII) [502]
    jm2.txt = Ganymede (JIII) [503]
    jm3.txt = Callisto (JIV) [504]

Coordinate Origin: Jupiter (body center) [500@599]

Time Span:
    Start = JD 2426545.0    (1931-07-22 12:00:00 TDB)
    Stop  = JD 2476545.0    (2068-06-12 12:00:00 TDB)
    Step  = 10 days

Table Settings:
    Type 2 (state vector x, y, z, vx, vy, vz)
    output units: au & au/d
    reference plane: Earth mean equator and equinox of reference epoch
    reference system: ICRF/J2000.0
    aberration: Geometric states (no light-time correction)
    Check the "labels" box and "object page" boxes, but NOT delta-T or CSV.

Display/Output : plain text

Click the "Generate Ephemeris" button.
Wait a couple of minutes for all the data to download.
Press Ctrl+A, Ctrl+C to copy to clipboard.
Then paste into an editor window.
(Trying to save the whole page directly DOES NOT WORK!)
