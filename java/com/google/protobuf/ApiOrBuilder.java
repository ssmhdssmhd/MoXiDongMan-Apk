package com.google.protobuf;

import java.util.List;

/* loaded from: classes2.dex */
public interface ApiOrBuilder extends MessageOrBuilder {
    g0 getMethods(int i);

    int getMethodsCount();

    List<g0> getMethodsList();

    MethodOrBuilder getMethodsOrBuilder(int i);

    List<? extends MethodOrBuilder> getMethodsOrBuilderList();

    h0 getMixins(int i);

    int getMixinsCount();

    List<h0> getMixinsList();

    MixinOrBuilder getMixinsOrBuilder(int i);

    List<? extends MixinOrBuilder> getMixinsOrBuilderList();

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

    String getVersion();

    ByteString getVersionBytes();

    boolean hasSourceContext();
}
