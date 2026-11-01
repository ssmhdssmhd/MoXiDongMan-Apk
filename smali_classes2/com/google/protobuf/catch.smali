.class abstract Lcom/google/protobuf/catch;
.super Lcom/google/protobuf/throw;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/catch$new;,
        Lcom/google/protobuf/catch$if;,
        Lcom/google/protobuf/catch$try;,
        Lcom/google/protobuf/catch$for;
    }
.end annotation


# static fields
.field private static final case:I = 0x1

.field private static final else:I = 0x2

.field public static final try:I = 0x1000


# instance fields
.field private final do:Lcom/google/protobuf/final;

.field public final for:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/for;",
            ">;"
        }
    .end annotation
.end field

.field private final if:I

.field public new:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/final;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/throw;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/catch;->for:Ljava/util/ArrayDeque;

    if-lez p2, :cond_0

    const-string v0, "alloc"

    .line 4
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/final;

    iput-object p1, p0, Lcom/google/protobuf/catch;->do:Lcom/google/protobuf/final;

    .line 5
    iput p2, p0, Lcom/google/protobuf/catch;->if:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkSize must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/final;ILcom/google/protobuf/catch$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch;-><init>(Lcom/google/protobuf/final;I)V

    return-void
.end method

.method private final a(ILcom/google/protobuf/m;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->synchronized(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final abstract(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->interface(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/catch;->writeDouble(ID)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final b(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->synchronized(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private c(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method public static synthetic case(J)B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/catch;->goto(J)B

    move-result p0

    return p0
.end method

.method public static catch()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch$new;->s()Z

    move-result v0

    return v0
.end method

.method public static class()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch$try;->u()Z

    move-result v0

    return v0
.end method

.method public static final d(Lcom/google/protobuf/Writer;ILcom/google/protobuf/c2$if;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/catch$do;->do:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unsupported map value type for: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    instance-of p2, p3, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz p2, :cond_0

    .line 4
    check-cast p3, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 5
    :cond_0
    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 6
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected type for enum in map."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_1
    check-cast p3, Lcom/google/protobuf/ByteString;

    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_0

    .line 11
    :pswitch_4
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_0

    .line 12
    :pswitch_5
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_0

    .line 13
    :pswitch_6
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto :goto_0

    .line 14
    :pswitch_7
    check-cast p3, Ljava/lang/String;

    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_8
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto :goto_0

    .line 16
    :pswitch_9
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto :goto_0

    .line 17
    :pswitch_a
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto :goto_0

    .line 18
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto :goto_0

    .line 19
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_0

    .line 20
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_0

    .line 21
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_0

    .line 22
    :pswitch_f
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_0

    .line 23
    :pswitch_10
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(ILcom/google/protobuf/m;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->e(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final finally(ILcom/google/protobuf/const;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/const;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/const;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/const;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->extends(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/const;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/const;->getBoolean(I)Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final g(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->e(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private static goto(J)B
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    int-to-byte v0, v0

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_4
    return v0
.end method

.method private final i(ILcom/google/protobuf/v;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/v;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->h(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/v;->getLong(I)J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final implements(ILcom/google/protobuf/h;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/h;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/h;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/h;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->continue(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/h;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/h;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/catch;->writeFloat(IF)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final instanceof(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->continue(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/catch;->writeFloat(IF)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final j(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->h(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final m(ILcom/google/protobuf/m;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->q(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final n(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->q(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static native(Lcom/google/protobuf/final;)Lcom/google/protobuf/catch;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p0, v0}, Lcom/google/protobuf/catch;->public(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;

    move-result-object p0

    return-object p0
.end method

.method private final o(ILcom/google/protobuf/v;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/v;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->r(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/v;->getLong(I)J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final p(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->r(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final package(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->extends(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final private(ILcom/google/protobuf/switch;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/switch;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/switch;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/switch;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->interface(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/switch;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/switch;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/catch;->writeDouble(ID)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final protected(ILcom/google/protobuf/v;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/v;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->interface(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/v;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/v;->getLong(I)J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static public(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/catch;->throws(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/catch;->static(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static return(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/catch$if;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/catch$if;-><init>(Lcom/google/protobuf/final;I)V

    return-object v0
.end method

.method public static static(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/catch$for;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/catch$for;-><init>(Lcom/google/protobuf/final;I)V

    return-object v0
.end method

.method private final strictfp(ILcom/google/protobuf/m;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->continue(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/protobuf/m;->getInt(I)I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static super(Lcom/google/protobuf/final;)Lcom/google/protobuf/catch;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p0, v0}, Lcom/google/protobuf/catch;->throw(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;

    move-result-object p0

    return-object p0
.end method

.method public static switch(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/catch$new;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/catch$new;-><init>(Lcom/google/protobuf/final;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsafe operations not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static throw(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/catch;->switch(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/catch;->return(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static throws(Lcom/google/protobuf/final;I)Lcom/google/protobuf/catch;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/catch$try;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/catch$try;-><init>(Lcom/google/protobuf/final;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsafe operations not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final transient(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/catch;->interface(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private final volatile(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch;->default(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/catch;->continue(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch;->q(I)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public abstract break()I
.end method

.method public final const()Lcom/google/protobuf/for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/catch;->do:Lcom/google/protobuf/final;

    iget v1, p0, Lcom/google/protobuf/catch;->if:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/final;->do(I)Lcom/google/protobuf/for;

    move-result-object v0

    return-object v0
.end method

.method public abstract continue(I)V
.end method

.method public abstract default(I)V
.end method

.method public abstract e(I)V
.end method

.method public final else()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/google/protobuf/for;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->this()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/catch;->for:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public abstract extends(Z)V
.end method

.method public final fieldOrder()Lcom/google/protobuf/Writer$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/Writer$do;->DESCENDING:Lcom/google/protobuf/Writer$do;

    return-object v0
.end method

.method public final final(I)Lcom/google/protobuf/for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/catch;->do:Lcom/google/protobuf/final;

    iget v1, p0, Lcom/google/protobuf/catch;->if:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/final;->do(I)Lcom/google/protobuf/for;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(J)V
.end method

.method public final import(I)Lcom/google/protobuf/for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/catch;->do:Lcom/google/protobuf/final;

    iget v1, p0, Lcom/google/protobuf/catch;->if:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/final;->if(I)Lcom/google/protobuf/for;

    move-result-object p1

    return-object p1
.end method

.method public abstract interface(J)V
.end method

.method public abstract k(Ljava/lang/String;)V
.end method

.method public abstract l(II)V
.end method

.method public abstract q(I)V
.end method

.method public abstract r(J)V
.end method

.method public abstract synchronized(I)V
.end method

.method public abstract this()V
.end method

.method public final while()Lcom/google/protobuf/for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/catch;->do:Lcom/google/protobuf/final;

    iget v1, p0, Lcom/google/protobuf/catch;->if:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/final;->if(I)Lcom/google/protobuf/for;

    move-result-object v0

    return-object v0
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/const;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/const;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->finally(ILcom/google/protobuf/const;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->package(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-interface {p0, p1, v1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeDouble(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/switch;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/switch;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->private(ILcom/google/protobuf/switch;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->abstract(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeEnum(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->writeInt32List(ILjava/util/List;Z)V

    return-void
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/m;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->strictfp(ILcom/google/protobuf/m;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->volatile(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->protected(ILcom/google/protobuf/v;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->transient(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeFloat(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/h;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/h;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->implements(ILcom/google/protobuf/h;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->instanceof(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/m;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->a(ILcom/google/protobuf/m;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->b(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->writeUInt64List(ILjava/util/List;Z)V

    return-void
.end method

.method public writeMap(ILcom/google/protobuf/y$if;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result v1

    .line 3
    iget-object v2, p2, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p0, v4, v2, v3}, Lcom/google/protobuf/catch;->d(Lcom/google/protobuf/Writer;ILcom/google/protobuf/c2$if;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 4
    iget-object v3, p2, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v3, v0}, Lcom/google/protobuf/catch;->d(Lcom/google/protobuf/Writer;ILcom/google/protobuf/c2$if;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->break()I

    move-result v0

    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch;->q(I)V

    .line 7
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/catch;->l(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/catch;->l(II)V

    .line 2
    instance-of v1, p2, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 3
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {p0, v2, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0, v2, p2}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    :goto_0
    const/4 p2, 0x2

    .line 5
    invoke-interface {p0, p2, p1}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/catch;->l(II)V

    return-void
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->writeFixed32List(ILjava/util/List;Z)V

    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->writeFixed64List(ILjava/util/List;Z)V

    return-void
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/m;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->f(ILcom/google/protobuf/m;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->g(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->i(ILcom/google/protobuf/v;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->j(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeStringList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 4
    invoke-interface {v0, p2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/catch;->c(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/m;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->m(ILcom/google/protobuf/m;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->n(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/protobuf/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/google/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->o(ILcom/google/protobuf/v;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/catch;->p(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method
