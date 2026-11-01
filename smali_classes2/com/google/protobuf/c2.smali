.class public final Lcom/google/protobuf/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/c2$new;,
        Lcom/google/protobuf/c2$if;,
        Lcom/google/protobuf/c2$for;
    }
.end annotation


# static fields
.field public static final break:I = 0x4

.field public static final case:I = 0x0

.field public static final catch:I = 0x5

.field public static final class:I = 0x3

.field public static final const:I = 0x7

.field public static final do:I = 0x4

.field public static final else:I = 0x1

.field public static final final:I = 0x1

.field public static final for:I = 0x5

.field public static final goto:I = 0x2

.field public static final if:I = 0x8

.field public static final import:I

.field public static final native:I

.field public static final new:I = 0xa

.field public static final public:I

.field public static final super:I = 0x2

.field public static final this:I = 0x3

.field public static final throw:I = 0x3

.field public static final try:I = 0xa

.field public static final while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Lcom/google/protobuf/c2;->for(II)I

    move-result v2

    sput v2, Lcom/google/protobuf/c2;->while:I

    const/4 v2, 0x4

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/c2;->for(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/c2;->import:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/c2;->for(II)I

    move-result v2

    sput v2, Lcom/google/protobuf/c2;->native:I

    .line 4
    invoke-static {v1, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/c2;->public:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static for(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static if(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static new(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/c2$if;Lcom/google/protobuf/c2$new;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/c2$do;->do:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_3
    invoke-virtual {p2, p0}, Lcom/google/protobuf/c2$new;->readString(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->i()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->g()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->f()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->m()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->return()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->finally()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->package()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->n()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->private()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->default()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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
