

import 'package:equatable/equatable.dart';
import 'package:retailator/features/retailator/domain/entities/basic_item_stats.dart';

class ItemOverview extends Equatable{
  int itemId;
  BasicItemStats current;
  BasicItemStats previous;

  //TODO : CTOR required
  ItemOverview({
    this.itemId,
    this.current, 
    this.previous
  });

  @override
  List<Object> get props => [itemId,current,previous];
}