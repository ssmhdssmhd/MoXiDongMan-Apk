package com.google.protobuf;

import java.util.List;

/* loaded from: classes2.dex */
public interface MethodOrBuilder extends MessageOrBuilder {
    String getName();

    ByteString getNameBytes();

    o0 getOptions(int i);

    int getOptionsCount();

    List<o0> getOptionsList();

    OptionOrBuilder getOptionsOrBuilder(int i);

    List<? extends OptionOrBuilder> getOptionsOrBuilderList();

    boolean getRequestStreaming();

    String getRequestTypeUrl();

    ByteString getRequestTypeUrlBytes();

    boolean getResponseStreaming();

    String getResponseTypeUrl();

    ByteString getResponseTypeUrlBytes();

    i1 getSyntax();

    int getSyntaxValue();
}
