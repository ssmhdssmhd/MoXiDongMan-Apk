.class public Lcom/googlecode/protobuf/format/try;
.super Lcom/googlecode/protobuf/format/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/protobuf/format/try$if;,
        Lcom/googlecode/protobuf/format/try$new;,
        Lcom/googlecode/protobuf/format/try$try;,
        Lcom/googlecode/protobuf/format/try$for;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/do;-><init>()V

    return-void
.end method

.method private abstract(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/try$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/try$do;->do:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    check-cast p2, Lcom/google/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/googlecode/protobuf/format/try;->extends(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/try$for;)V

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/Descriptors$case;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$case;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 5
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/googlecode/protobuf/format/try;->import(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 8
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/googlecode/protobuf/format/try;->native(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/i62;->native(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private continue(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Integer;Lcom/googlecode/protobuf/format/try$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    .line 2
    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->super()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    .line 9
    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v0, v1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v0, v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/googlecode/protobuf/format/try;->while(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/googlecode/protobuf/format/try;->while(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->do(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v2, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/googlecode/protobuf/format/try;->while(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->do(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "="

    .line 17
    invoke-virtual {p4, v0}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 18
    :goto_2
    invoke-direct {p0, p1, p2, p4}, Lcom/googlecode/protobuf/format/try;->abstract(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/try$for;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p2

    sget-object v0, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne p2, v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/googlecode/protobuf/format/try;->while(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/googlecode/protobuf/format/try$for;->if(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p2

    if-ne p2, v1, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/googlecode/protobuf/format/try;->while(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/googlecode/protobuf/format/try$for;->if(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "\n"

    .line 23
    invoke-virtual {p4, p1}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public static default(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/protobuf/format/try;->switch(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private extends(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/try$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$else;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/googlecode/protobuf/format/try;->finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/try$for;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/googlecode/protobuf/format/try;->strictfp(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/try$for;)V

    return-void
.end method

.method private finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/try$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/googlecode/protobuf/format/try;->continue(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Integer;Lcom/googlecode/protobuf/format/try$for;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/googlecode/protobuf/format/try;->continue(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Integer;Lcom/googlecode/protobuf/format/try$for;)V

    :cond_1
    return-void
.end method

.method public static import(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    int-to-char v2, v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v2, "\\f"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "\\v"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "\\n"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "\\t"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v2, "\\b"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v2, "\\a"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "\\\\"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "\\\'"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "\\\""

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static interface(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$if;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/googlecode/protobuf/format/try;->volatile(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/googlecode/protobuf/format/try;->import(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private public(Lcom/googlecode/protobuf/format/try$try;Lcom/google/protobuf/protected;Ljava/util/Map;Lcom/google/protobuf/Message$Builder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/protobuf/format/try$try;",
            "Lcom/google/protobuf/protected;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Message;",
            ">;",
            "Lcom/google/protobuf/Message$Builder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/try$try;->return(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "]"

    const/16 v4, 0x2e

    const-string v5, "."

    const-string v6, "\"."

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->goto()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p1, v5}, Lcom/googlecode/protobuf/format/try$try;->return(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->goto()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/google/protobuf/protected;->final(Ljava/lang/String;)Lcom/google/protobuf/protected$for;

    move-result-object v8

    const-string v9, "Extension \""

    if-eqz v8, :cond_2

    .line 9
    iget-object v10, v8, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v10

    if-ne v10, v0, :cond_1

    .line 10
    invoke-virtual {p1, v3}, Lcom/googlecode/protobuf/format/try$try;->if(Ljava/lang/String;)V

    .line 11
    iget-object v0, v8, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    goto/16 :goto_1

    .line 12
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\" does not extend message type \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/try$try;->native(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1

    .line 15
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\" not found in the ExtensionRegistry."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/try$try;->native(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->goto()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v8

    if-nez v8, :cond_4

    .line 18
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v0, v8}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 20
    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v9, v10, :cond_4

    move-object v8, v7

    :cond_4
    if-eqz v8, :cond_5

    .line 21
    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v9, v10, :cond_5

    .line 22
    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    move-object v8, v7

    :cond_5
    if-eqz v8, :cond_f

    move-object v0, v8

    move-object v8, v7

    .line 23
    :goto_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/try$try;->if(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->this()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v3}, Lcom/googlecode/protobuf/format/try$try;->if(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, v7

    .line 27
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v2, v3, :cond_9

    .line 28
    invoke-virtual {p1, v5}, Lcom/googlecode/protobuf/format/try$try;->if(Ljava/lang/String;)V

    if-nez v8, :cond_7

    .line 29
    invoke-interface {p4, v0}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object v2

    goto :goto_3

    .line 30
    :cond_7
    iget-object v2, v8, Lcom/google/protobuf/protected$for;->if:Lcom/google/protobuf/Message;

    invoke-interface {v2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v2

    .line 31
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    if-eqz v3, :cond_8

    .line 32
    invoke-interface {v2, v3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 33
    :cond_8
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/googlecode/protobuf/format/try;->public(Lcom/googlecode/protobuf/format/try$try;Lcom/google/protobuf/protected;Ljava/util/Map;Lcom/google/protobuf/Message$Builder;)V

    .line 34
    invoke-interface {v2}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v7

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_9
    const-string p2, "="

    .line 36
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/try$try;->if(Ljava/lang/String;)V

    .line 37
    sget-object p2, Lcom/googlecode/protobuf/format/try$do;->do:[I

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 38
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get here."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object p2

    .line 40
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->throw()Z

    move-result p3

    const-string v2, "Enum type \""

    if-eqz p3, :cond_b

    .line 41
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->this()I

    move-result p3

    .line 42
    invoke-virtual {p2, p3}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object v7

    if-eqz v7, :cond_a

    goto/16 :goto_4

    .line 43
    :cond_a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has no value with number "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/try$try;->native(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1

    .line 46
    :cond_b
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->goto()Ljava/lang/String;

    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Lcom/google/protobuf/Descriptors$try;->case(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$case;

    move-result-object v7

    if-eqz v7, :cond_c

    goto :goto_4

    .line 48
    :cond_c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has no value named \""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/try$try;->native(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1

    .line 51
    :pswitch_2
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->new()Lcom/google/protobuf/ByteString;

    move-result-object v7

    goto :goto_4

    .line 52
    :pswitch_3
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->catch()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 53
    :pswitch_4
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->const()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4

    .line 54
    :pswitch_5
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->class()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    .line 55
    :pswitch_6
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->for()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_4

    .line 56
    :pswitch_7
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->case()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_4

    .line 57
    :pswitch_8
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->else()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_4

    .line 58
    :pswitch_9
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->break()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4

    .line 59
    :pswitch_a
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/try$try;->this()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 60
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 61
    invoke-interface {p4, v0}, Lcom/google/protobuf/MessageOrBuilder;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_d

    .line 63
    invoke-interface {p4, v0, v7}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_5

    .line 64
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p4, v0, p1, v7}, Lcom/google/protobuf/Message$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_5

    .line 65
    :cond_e
    invoke-interface {p4, v0, v7}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    :goto_5
    return-void

    .line 66
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Message type \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" has no field named \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/try$try;->native(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static return(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/protobuf/format/try;->switch(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static static(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lcom/googlecode/protobuf/format/try;->switch(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private strictfp(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/try$for;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1;->if()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/t1$for;

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->public()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "="

    const-string v5, "\n"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {v6, v7}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->const()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    new-array v7, v7, [Ljava/lang/Object;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    const-string v3, "0x%08x"

    invoke-static {v8, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->final()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    new-array v3, v7, [Ljava/lang/Object;

    .line 16
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v6

    const-string v9, "0x%016x"

    invoke-static {v8, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->while()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    const-string v4, "=\""

    .line 20
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {v3}, Lcom/googlecode/protobuf/format/try;->import(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    const-string v3, "\"\n"

    .line 22
    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->super()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/t1;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/try$for;->do(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, v2, p2}, Lcom/googlecode/protobuf/format/try;->strictfp(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/try$for;)V

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/googlecode/protobuf/format/try$for;->if(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/try$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method private static switch(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number must be positive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0xa

    const-string v3, "0x"

    .line 3
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const-string v3, "0"

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_8

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    goto/16 :goto_3

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_7

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    goto/16 :goto_3

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    .line 11
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    .line 12
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    .line 13
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    .line 15
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    .line 16
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    .line 17
    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    .line 19
    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_10
    :goto_3
    return-wide v0

    .line 20
    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static throws(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/googlecode/protobuf/format/try;->switch(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static volatile(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$if;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_11

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 6
    invoke-static {v4}, Landroid/support/v4/i62;->try(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v4}, Landroid/support/v4/i62;->do(C)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/support/v4/i62;->try(C)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v4, v4, 0x8

    .line 9
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/i62;->do(C)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_0
    add-int/lit8 v5, v2, 0x1

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/support/v4/i62;->try(C)Z

    move-result v6

    if-eqz v6, :cond_1

    mul-int/lit8 v4, v4, 0x8

    .line 11
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/i62;->do(C)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 12
    aput-byte v4, v0, v3

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x22

    if-eq v4, v6, :cond_f

    const/16 v6, 0x27

    if-eq v4, v6, :cond_e

    if-eq v4, v5, :cond_d

    const/16 v5, 0x66

    if-eq v4, v5, :cond_c

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_b

    const/16 v5, 0x72

    if-eq v4, v5, :cond_a

    const/16 v5, 0x74

    if-eq v4, v5, :cond_9

    const/16 v5, 0x76

    if-eq v4, v5, :cond_8

    const/16 v5, 0x78

    if-eq v4, v5, :cond_5

    const/16 v5, 0x61

    if-eq v4, v5, :cond_4

    const/16 v5, 0x62

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 13
    aput-byte v5, v0, v3

    goto/16 :goto_1

    .line 14
    :cond_3
    new-instance p0, Lcom/googlecode/protobuf/format/try$if;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 15
    aput-byte v5, v0, v3

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/support/v4/i62;->new(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/support/v4/i62;->do(C)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/support/v4/i62;->new(C)Z

    move-result v6

    if-eqz v6, :cond_6

    mul-int/lit8 v4, v4, 0x10

    .line 19
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/i62;->do(C)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 20
    aput-byte v4, v0, v3

    move v4, v5

    goto :goto_1

    .line 21
    :cond_7
    new-instance p0, Lcom/googlecode/protobuf/format/try$if;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 22
    aput-byte v5, v0, v3

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 23
    aput-byte v5, v0, v3

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 24
    aput-byte v5, v0, v3

    goto :goto_1

    :cond_b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 25
    aput-byte v5, v0, v3

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 26
    aput-byte v5, v0, v3

    goto :goto_1

    :cond_d
    add-int/lit8 v4, v3, 0x1

    .line 27
    aput-byte v5, v0, v3

    goto :goto_1

    :cond_e
    add-int/lit8 v4, v3, 0x1

    .line 28
    aput-byte v6, v0, v3

    goto :goto_1

    :cond_f
    add-int/lit8 v4, v3, 0x1

    .line 29
    aput-byte v6, v0, v3

    :goto_1
    move v3, v4

    goto :goto_3

    .line 30
    :cond_10
    new-instance p0, Lcom/googlecode/protobuf/format/try$if;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 31
    aput-byte v4, v0, v3

    :goto_2
    move v3, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 32
    :cond_12
    invoke-static {v0, v1, v3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private while(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public const(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/try$try;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/googlecode/protobuf/format/try$try;-><init>(Ljava/lang/CharSequence;Lcom/googlecode/protobuf/format/try$do;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/googlecode/protobuf/format/try$try;->do()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/googlecode/protobuf/format/try;->public(Lcom/googlecode/protobuf/format/try$try;Lcom/google/protobuf/protected;Ljava/util/Map;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public package(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/try$for;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/googlecode/protobuf/format/try$for;-><init>(Ljava/lang/Appendable;Lcom/googlecode/protobuf/format/try$do;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/googlecode/protobuf/format/try;->finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/try$for;)V

    return-void
.end method

.method public private(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/protobuf/format/try;->package(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public super(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/try$for;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/googlecode/protobuf/format/try$for;-><init>(Ljava/lang/Appendable;Lcom/googlecode/protobuf/format/try$do;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/try;->extends(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/try$for;)V

    return-void
.end method

.method public throw(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/try$for;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/googlecode/protobuf/format/try$for;-><init>(Ljava/lang/Appendable;Lcom/googlecode/protobuf/format/try$do;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/try;->strictfp(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/try$for;)V

    return-void
.end method
