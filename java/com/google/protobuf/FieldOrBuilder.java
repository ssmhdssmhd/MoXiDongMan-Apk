package com.google.protobuf;

import com.google.protobuf.c;
import java.util.List;

/* loaded from: classes2.dex */
public interface FieldOrBuilder extends MessageOrBuilder {
    c.Cfor getCardinality();

    int getCardinalityValue();

    String getDefaultValue();

    ByteString getDefaultValueBytes();

    String getJsonName();

    ByteString getJsonNameBytes();

    c.Cnew getKind();

    int getKindValue();

    String getName();

    ByteString getNameBytes();

    int getNumber();

    int getOneofIndex();

    o0 getOptions(int i);

    int getOptionsCount();

    List<o0> getOptionsList();

    OptionOrBuilder getOptionsOrBuilder(int i);

    List<? extends OptionOrBuilder> getOptionsOrBuilderList();

    boolean getPacked();

    String getTypeUrl();

    ByteString getTypeUrlBytes();
}
