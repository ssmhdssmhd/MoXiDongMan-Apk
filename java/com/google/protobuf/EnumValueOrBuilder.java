package com.google.protobuf;

import java.util.List;

/* loaded from: classes2.dex */
public interface EnumValueOrBuilder extends MessageOrBuilder {
    String getName();

    ByteString getNameBytes();

    int getNumber();

    o0 getOptions(int i);

    int getOptionsCount();

    List<o0> getOptionsList();

    OptionOrBuilder getOptionsOrBuilder(int i);

    List<? extends OptionOrBuilder> getOptionsOrBuilderList();
}
