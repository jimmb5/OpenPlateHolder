# OpenPlate Holder

A fully parametric, 3D-printable magnetic license plate holder designed in OpenSCAD. This project allows you to generate a custom holder for your specific magnet sizes.

## Required Components

In addition to the 3D-printed holder, you will need:

- **Magnets:** The default design is sized for magnets with a **20 mm diameter** and **8 mm thickness**.
- **Counterparts:** Metal plates or discs (usually included with the magnets).
- **Superglue:** To secure the magnet permanently in the holder. The fit should be tight, but a drop of glue ensures it stays in place.
- **Double-sided Tape:** For mounting the holder to your plate. Good recommendation: [Gorilla Heavy Duty Mounting Tape](https://www.motonet.fi/tuote/gorilla-hd-mounting-tape-kaksipuolinen-asennusteippi-254-mm-15-m?product=75-00417) or a similar strong adhesive.

## Features

- **Parametric Design:** Easily adjust dimensions, magnet size, and plate thickness.
- **Open Source:** Built with OpenSCAD code that is easy to read and modify.
- **Ready to Print:** Includes a sample STL file (pre-sized for 20×8 mm magnets).

**Just want the STL?** Download the ready-to-print file from the [Releases](https://github.com/jimmb5/OpenPlateHolder/releases) page — no Git or GitHub account needed.

## How to Customize

1. Download and install [OpenSCAD](https://openscad.org/).
2. Open `OpenPlate.scad`.
3. Modify the variables at the top of the file to fit your needs:

   ```scad
   // Base Plate Dimensions
   width = 60;       // Total width
   depth = 25.5;     // Total depth
   
   // Magnet Holder Dimensions
   magnet_d = 20;    // Diameter of the magnet
   magnet_h = 9.25;  // Height of the magnet
   ```

4. Press **F5** to preview your changes.
5. Press **F6** to render the final model.
6. Press **F7** to export as an STL file for 3D printing.

## 3D Printing Instructions

- **Orientation:** Print flat on the build plate.
- **Material:** PLA, PETG, or ABS.
- **Infill:** 20% or higher recommended for structural integrity.
- **Supports:** No supports required if printed flat.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
