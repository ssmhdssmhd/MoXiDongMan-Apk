package com.google.protobuf;

import java.util.List;

/* loaded from: classes2.dex */
public interface TypeOrBuilder extends MessageOrBuilder {
    c getFields(int i);

    int getFieldsCount();

    List<c> getFieldsList();

    FieldOrBuilder getFieldsOrBuilder(int i);

    List<? extends FieldOrBuilder> getFieldsOrBuilderList();

    String getName();

    ByteString getNameBytes();

    String getOneofs(int i);

    ByteString getOneofsBytes(int i);

    int getOneofsCount();

    List<String> getOneofsList();

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
