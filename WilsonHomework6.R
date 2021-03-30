#Ellen Wilson
#BIOL 792 HW 6
#3/29/21


#Making Josh's graph pretty in my own way! 
#Try #1
quartz(height=6, width=6)
par(mar=c(5,5,1,1))
plot(as.numeric(map_mat[,4]), as.numeric(map_mat[,3]), type="n", ylim=c(39.6, 40.4), xlim=c(-116.65, -115.85), xlab="Longitude (degrees)", ylab="Latitude (degrees)", cex.lab=1.25, las=1); box(lwd=2)
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col="cornsilk")
points(as.numeric(map_mat[1,4]), as.numeric(map_mat[1,3]), pch=21, bg="greenyellow", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[2,4]), as.numeric(map_mat[2,3]), pch=22, bg="greenyellow", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[3,4]), as.numeric(map_mat[3,3]), pch=21, bg="palegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[4,4]), as.numeric(map_mat[4,3]), pch=22, bg="palegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[5,4]), as.numeric(map_mat[5,3]), pch=21, bg="darkolivegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[6,4]), as.numeric(map_mat[6,3]), pch=22, bg="darkolivegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[7,4]), as.numeric(map_mat[7,3]), pch=21, bg="yellowgreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[8,4]), as.numeric(map_mat[8,3]), pch=21, bg="seagreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[9,4]), as.numeric(map_mat[9,3]), pch=22, bg="seagreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[10,4]), as.numeric(map_mat[10,3]), pch=23, bg="seagreen", cex=2.5, lwd=1.5)
legend("bottomleft", legend=c("Modarelli Mine", "Big Pole", "Quartz Road", "Horse Creek", "Gable Canyon", "Pinefield", "Dome House", "Pony Express", "Kobeh Valley", "Lone Mountain"), pch=c(22,21,22,21,22,23,21,21,21,22), pt.bg=c("darkolivegreen", "darkolivegreen", "greenyellow", "greenyellow", "seagreen", "seagreen", "seagreen", "yellowgreen", "palegreen", "palegreen"), pt.cex=2, pt.lwd=1.5, box.lwd=1.5)


#Try #2
quartz(height=6, width=6)
par(mar=c(5,5,1,1))
plot(as.numeric(map_mat[,4]), as.numeric(map_mat[,3]), type="n", ylim=c(39.6, 40.4), xlim=c(-116.65, -115.85), xlab="Longitude (degrees)", ylab="Latitude (degrees)", cex.lab=1.25, las=1); box(lwd=2)
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col="cornsilk")
points(as.numeric(map_mat[1,4]), as.numeric(map_mat[1,3]), pch=21, bg="greenyellow", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[2,4]), as.numeric(map_mat[2,3]), pch=24, bg="greenyellow", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[3,4]), as.numeric(map_mat[3,3]), pch=21, bg="palegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[4,4]), as.numeric(map_mat[4,3]), pch=24, bg="palegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[5,4]), as.numeric(map_mat[5,3]), pch=21, bg="darkolivegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[6,4]), as.numeric(map_mat[6,3]), pch=24, bg="darkolivegreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[7,4]), as.numeric(map_mat[7,3]), pch=21, bg="yellowgreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[8,4]), as.numeric(map_mat[8,3]), pch=21, bg="seagreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[9,4]), as.numeric(map_mat[9,3]), pch=24, bg="seagreen", cex=2.5, lwd=1.5)
points(as.numeric(map_mat[10,4]), as.numeric(map_mat[10,3]), pch=23, bg="seagreen", cex=2.5, lwd=1.5)
legend("bottomleft", legend=c("Modarelli Mine", "Big Pole", "Quartz Road", "Horse Creek", "Gable Canyon", "Pinefield", "Dome House", "Pony Express", "Kobeh Valley", "Lone Mountain"), pch=c(24,21,24,21,24,23,21,21,21,24), pt.bg=c("darkolivegreen", "darkolivegreen", "greenyellow", "greenyellow", "seagreen", "seagreen", "seagreen", "yellowgreen", "palegreen", "palegreen"), pt.cex=2, pt.lwd=1.5, box.lwd=1.5)


#Final graph
quartz(height=6, width=6)
par(mar=c(5,5,1,1))
plot(as.numeric(map_mat[,4]), as.numeric(map_mat[,3]), type="n", ylim=c(39.6, 40.4), xlim=c(-116.65, -115.85), xlab="Longitude (degrees)", ylab="Latitude (degrees)", cex.lab=1.25, las=1); box(lwd=2.5)
rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col="cornsilk")
points(as.numeric(map_mat[1,4]), as.numeric(map_mat[1,3]), pch=21, bg="greenyellow", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[2,4]), as.numeric(map_mat[2,3]), pch=24, bg="greenyellow", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[3,4]), as.numeric(map_mat[3,3]), pch=21, bg="palegreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[4,4]), as.numeric(map_mat[4,3]), pch=24, bg="palegreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[5,4]), as.numeric(map_mat[5,3]), pch=21, bg="darkolivegreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[6,4]), as.numeric(map_mat[6,3]), pch=24, bg="darkolivegreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[7,4]), as.numeric(map_mat[7,3]), pch=21, bg="yellowgreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[8,4]), as.numeric(map_mat[8,3]), pch=21, bg="seagreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[9,4]), as.numeric(map_mat[9,3]), pch=24, bg="seagreen", cex=2.25, lwd=1.5)
points(as.numeric(map_mat[10,4]), as.numeric(map_mat[10,3]), pch=23, bg="seagreen", cex=2.25, lwd=1.5)
legend("bottomleft", legend=c("Modarelli Mine", "Big Pole", "Quartz Road", "Horse Creek", "Gable Canyon", "Pinefield", "Dome House", "Pony Express", "Kobeh Valley", "Lone Mountain"), pch=c(24,21,24,21,24,23,21,21,21,24), pt.bg=c("darkolivegreen", "darkolivegreen", "greenyellow", "greenyellow", "seagreen", "seagreen", "seagreen", "yellowgreen", "palegreen", "palegreen"), box.col = "black", pt.cex=1.5, pt.lwd=1.5, box.lwd=1.5, box.lty = 2)
title("The Coordinate Locations of Grouse Populations")


