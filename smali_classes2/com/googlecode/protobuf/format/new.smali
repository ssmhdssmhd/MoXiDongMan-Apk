.class public final Lcom/googlecode/protobuf/format/new;
.super Lcom/googlecode/protobuf/format/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/protobuf/format/new$for;,
        Lcom/googlecode/protobuf/format/new$if;
    }
.end annotation


# static fields
.field private static final for:Ljava/lang/String; = "color: black; font-size: 14px; font-family: sans-serif; font-weight: bolder; margin-bottom: 10px;"

.field private static final if:Ljava/lang/String; = "<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\" />"

.field private static final new:Ljava/lang/String; = "font-weight: bold; color: #669966;font-size: 14px; font-family: sans-serif;"

.field private static final try:Ljava/lang/String; = "color: #3300FF;font-size: 13px; font-family: sans-serif;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/do;-><init>()V

    return-void
.end method

.method public static abstract(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/new$for;
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
    new-instance p0, Lcom/googlecode/protobuf/format/new$for;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/new$for;-><init>(Ljava/lang/String;)V

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
    new-instance p0, Lcom/googlecode/protobuf/format/new$for;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/new$for;-><init>(Ljava/lang/String;)V

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
    new-instance p0, Lcom/googlecode/protobuf/format/new$for;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/new$for;-><init>(Ljava/lang/String;)V

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

.method public static continue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/new$for;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/googlecode/protobuf/format/new;->abstract(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extends(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<span style=\""

    .line 1
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "color: #3300FF;font-size: 13px; font-family: sans-serif;"

    .line 2
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "\">"

    .line 3
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 4
    sget-object v0, Lcom/googlecode/protobuf/format/new$do;->do:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    check-cast p2, Lcom/google/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/googlecode/protobuf/format/new;->throws(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/new$if;)V

    goto :goto_0

    .line 6
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/Descriptors$case;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$case;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 8
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/googlecode/protobuf/format/new;->while(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/i62;->native(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "</span>"

    .line 16
    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

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

.method private finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    const-string v1, "\">"

    const-string v2, "font-weight: bold; color: #669966;font-size: 14px; font-family: sans-serif;"

    if-eqz v0, :cond_1

    const-string v0, "[<span style=\""

    .line 2
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p3, v2}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p3, v1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->super()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "</span>]"

    .line 10
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const-string v0, "<span style=\""

    .line 11
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p3, v2}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p3, v1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v0, "</span>"

    .line 17
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 18
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_3

    const-string v0, " <span style=\"color: red;\">{</span><br/>"

    .line 19
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p3}, Lcom/googlecode/protobuf/format/new$if;->do()V

    goto :goto_3

    :cond_3
    const-string v0, ": "

    .line 21
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 22
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/new;->extends(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object p1

    if-ne p1, v1, :cond_4

    .line 24
    invoke-virtual {p3}, Lcom/googlecode/protobuf/format/new$if;->if()V

    const-string p1, "<span style=\"color: red;\">}</span>"

    .line 25
    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    :cond_4
    const-string p1, "<br/>"

    .line 26
    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static import(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/googlecode/protobuf/format/new;->while(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/protobuf/format/new;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private package(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/new$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<html><head>"

    .line 1
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\" />"

    .line 2
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "<title>"

    .line 3
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 4
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "</title></head><body>"

    .line 5
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "<div style=\""

    .line 6
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "color: black; font-size: 14px; font-family: sans-serif; font-weight: bolder; margin-bottom: 10px;"

    .line 7
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v0, "\">message : "

    .line 8
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 9
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string p1, "</div>"

    .line 10
    invoke-virtual {p2, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private private(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/new$if;)V
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

    const-string v4, "<br/>"

    const-string v5, ": "

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

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {v6, v7}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p2, v9}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    new-array v7, v7, [Ljava/lang/Object;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    const-string v3, "0x%08x"

    invoke-static {v8, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p2, v5}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    new-array v3, v7, [Ljava/lang/Object;

    .line 16
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v6

    const-string v9, "0x%016x"

    invoke-static {v8, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v4, ": \""

    .line 20
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {v3}, Lcom/googlecode/protobuf/format/new;->while(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v3, "\"<br/>"

    .line 22
    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string v3, " <span style=\"color: red;\">{</span><br/>"

    .line 25
    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p2}, Lcom/googlecode/protobuf/format/new$if;->do()V

    .line 27
    invoke-direct {p0, v2, p2}, Lcom/googlecode/protobuf/format/new;->private(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/new$if;)V

    .line 28
    invoke-virtual {p2}, Lcom/googlecode/protobuf/format/new$if;->if()V

    const-string v2, "<span style=\"color: red;\">}</span><br/>"

    .line 29
    invoke-virtual {p2, v2}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static public(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lcom/googlecode/protobuf/format/new;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static return(Ljava/lang/String;ZZ)J
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

.method public static static(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/googlecode/protobuf/format/new;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static switch(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/protobuf/format/new;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private throws(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/new$if;)V
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

    invoke-virtual {p0, v2, v1, p2}, Lcom/googlecode/protobuf/format/new;->default(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/googlecode/protobuf/format/new;->private(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/new$if;)V

    return-void
.end method

.method public static while(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
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


# virtual methods
.method public const(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public default(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V
    .locals 1
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

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0, p3}, Lcom/googlecode/protobuf/format/new;->finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/new;->finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/new$if;)V

    :cond_1
    return-void
.end method

.method public super(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/new$if;

    invoke-direct {v0, p2}, Lcom/googlecode/protobuf/format/new$if;-><init>(Ljava/lang/Appendable;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/new;->package(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/new$if;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/new;->throws(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/new$if;)V

    const-string p1, "</body></html>"

    .line 4
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public throw(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/new$if;

    invoke-direct {v0, p2}, Lcom/googlecode/protobuf/format/new$if;-><init>(Ljava/lang/Appendable;)V

    const-string p2, "<html>"

    .line 2
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string p2, "<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\" />"

    .line 3
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    const-string p2, "</head><body>"

    .line 4
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/new;->private(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/new$if;)V

    const-string p1, "</body></html>"

    .line 6
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    return-void
.end method
