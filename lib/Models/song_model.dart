import 'package:flutter/material.dart';

class SongModel {
  final int id;
  final String name;
  final String artist;
  final String genre;
  final Image image;
  SongModel({
    required this.id,
    required this.name,
    required this.artist,
    required this.genre,
    required this.image,
  });
}