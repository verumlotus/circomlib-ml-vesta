/*
    Copyright 2018 0KIMS association.

    This file is part of circom (Zero Knowledge Circuit Compiler).

    circom is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    circom is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with circom. If not, see <https://www.gnu.org/licenses/>.
*/
pragma circom 2.0.0;

include "compconstant.circom";

template Sign() {
    signal input in[256];
    signal output sign;

    // Vesta prime // 2
    component comp = CompConstant(14474011154664524427946373126085988481681528240970823689839871374196681474048);

    var i;

    for (i=0; i<256; i++) {
        comp.in[i] <== in[i];
    }

    sign <== comp.out;
}
