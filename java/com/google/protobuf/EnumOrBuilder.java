package com.google.protobuf;

import java.util.List;

/* loaded from: classes2.dex */
public interface EnumOrBuilder extends MessageOrBuilder {
    Ccontinue getEnumvalue(int i);

    int getEnumvalueCount();

    List<Ccontinue> getEnumvalueList();

    EnumValueOrBuilder getEnumvalueOrBuilder(int i);

    List<? extends EnumValueOrBuilder> getEnumvalueOrBuilderList();

    String getName();

    ByteString getNameBytes();

    o0 getOptions(int i);

    int getOptionsCount();

    List<o0> getOptionsList();

    OptionOrBuilder getOptionsOrBuilder(int i);

    List<? extends OptionOrBuilder> getOptionsOrBuilderList();

    c1 getSourceContext();

    SourceContextOrBuilder getSourceContextOrBuilder();

    i1 getSyntax();

    int getSyntaxValue();

    boolean hasSourceContext();
}
