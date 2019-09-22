import 'package:flute_music_player/flute_music_player.dart';

class SongData {
  List<Song> _songs;
  int _currentSongIndex = -1;
  MusicFinder musicFinder;
  SongData(this._songs) {
    musicFinder = new MusicFinder();
  }

  List<Song> get songs => _songs;
  int get length => _songs.length;
  int get songNumber => _currentSongIndex + 1;

  setCurrentIndex(int index) {
    _currentSongIndex = index;
  }

  int get currentIndex => _currentSongIndex;

  MusicFinder get audioPlayer => musicFinder;
}