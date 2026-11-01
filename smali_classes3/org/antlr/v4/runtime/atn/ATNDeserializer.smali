.class public Lorg/antlr/v4/runtime/atn/ATNDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;,
        Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;
    }
.end annotation


# static fields
.field private static final case:Ljava/util/UUID;

.field private static final else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static final for:Ljava/util/UUID;

.field public static final goto:Ljava/util/UUID;

.field public static final if:I = 0x3

.field private static final new:Ljava/util/UUID;

.field private static final try:Ljava/util/UUID;


# instance fields
.field private final do:Landroid/support/v4/default;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "33761B2D-78BB-4A43-8B0B-4F5BEE8AACF3"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->for:Ljava/util/UUID;

    const-string v1, "1DA0C57D-6C06-438A-9B27-10BCB3CE0F61"

    .line 2
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->new:Ljava/util/UUID;

    const-string v2, "AADB8D7E-AEEF-4415-AD2B-8204D6CF042E"

    .line 3
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->try:Ljava/util/UUID;

    const-string v3, "59627784-3BE5-417A-B9EB-8131A7286089"

    .line 4
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    sput-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case:Ljava/util/UUID;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else:Ljava/util/List;

    .line 6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sput-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->goto:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/default;->do()Landroid/support/v4/default;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>(Landroid/support/v4/default;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/default;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Landroid/support/v4/default;->do()Landroid/support/v4/default;

    move-result-object p1

    .line 4
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do:Landroid/support/v4/default;

    return-void
.end method

.method public static case(Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$do;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$do;-><init>()V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$if;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$if;-><init>()V

    return-object p0
.end method

.method public static catch(C)I
    .locals 0

    return p0
.end method

.method public static class([CI)I
    .locals 1

    .line 1
    aget-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static const([CI)J
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->class([CI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    .line 2
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->class([CI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static else(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x0

    if-gez p0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lt p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final([CI)Ljava/util/UUID;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->const([CI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    .line 2
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->const([CI)J

    move-result-wide p0

    .line 3
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, p0, p1, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method

.method private new([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI",
            "Ljava/util/List<",
            "Landroid/support/v4/sn0;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;",
            ")I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-char p2, p1, p2

    invoke-static {p2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 2
    aget-char v3, p1, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 3
    new-instance v4, Landroid/support/v4/sn0;

    new-array v5, v1, [I

    invoke-direct {v4, v5}, Landroid/support/v4/sn0;-><init>([I)V

    .line 4
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v0, 0x1

    .line 5
    aget-char v0, p1, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 6
    invoke-virtual {v4, v0}, Landroid/support/v4/sn0;->add(I)V

    :cond_1
    move v0, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    .line 7
    invoke-interface {p4, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v6

    .line 8
    invoke-interface {p4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v7

    add-int/2addr v0, v7

    .line 9
    invoke-interface {p4, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v7

    .line 10
    invoke-interface {p4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v8

    add-int/2addr v0, v8

    .line 11
    invoke-virtual {v4, v6, v7}, Landroid/support/v4/sn0;->do(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public break(II)Landroid/support/v4/finally;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "The specified state type %d is not valid."

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :pswitch_0
    new-instance p1, Landroid/support/v4/fw0;

    invoke-direct {p1}, Landroid/support/v4/fw0;-><init>()V

    goto :goto_0

    .line 4
    :pswitch_1
    new-instance p1, Landroid/support/v4/de1;

    invoke-direct {p1}, Landroid/support/v4/de1;-><init>()V

    goto :goto_0

    .line 5
    :pswitch_2
    new-instance p1, Landroid/support/v4/j12;

    invoke-direct {p1}, Landroid/support/v4/j12;-><init>()V

    goto :goto_0

    .line 6
    :pswitch_3
    new-instance p1, Landroid/support/v4/k12;

    invoke-direct {p1}, Landroid/support/v4/k12;-><init>()V

    goto :goto_0

    .line 7
    :pswitch_4
    new-instance p1, Landroid/support/v4/ca;

    invoke-direct {p1}, Landroid/support/v4/ca;-><init>()V

    goto :goto_0

    .line 8
    :pswitch_5
    new-instance p1, Landroid/support/v4/yo1;

    invoke-direct {p1}, Landroid/support/v4/yo1;-><init>()V

    goto :goto_0

    .line 9
    :pswitch_6
    new-instance p1, Landroid/support/v4/y72;

    invoke-direct {p1}, Landroid/support/v4/y72;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_7
    new-instance p1, Landroid/support/v4/i12;

    invoke-direct {p1}, Landroid/support/v4/i12;-><init>()V

    goto :goto_0

    .line 11
    :pswitch_8
    new-instance p1, Landroid/support/v4/ce1;

    invoke-direct {p1}, Landroid/support/v4/ce1;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_9
    new-instance p1, Landroid/support/v4/q7;

    invoke-direct {p1}, Landroid/support/v4/q7;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_a
    new-instance p1, Landroid/support/v4/xo1;

    invoke-direct {p1}, Landroid/support/v4/xo1;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_b
    new-instance p1, Landroid/support/v4/h8;

    invoke-direct {p1}, Landroid/support/v4/h8;-><init>()V

    .line 15
    :goto_0
    iput p2, p1, Landroid/support/v4/finally;->for:I

    return-object p1

    :pswitch_c
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public do(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->if(ZLjava/lang/String;)V

    return-void
.end method

.method public for([C)Landroid/support/v4/static;
    .locals 21

    move-object/from16 v9, p0

    .line 1
    const-class v0, Landroid/support/v4/static;

    invoke-virtual/range {p1 .. p1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [C

    const/4 v11, 0x1

    const/4 v1, 0x1

    .line 2
    :goto_0
    array-length v2, v10

    const/4 v3, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    aget-char v2, v10, v1

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 4
    aget-char v1, v10, v12

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v1

    .line 5
    sget v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->if:I

    if-ne v1, v2, :cond_39

    .line 6
    invoke-static {v10, v11}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->final([CI)Ljava/util/UUID;

    move-result-object v1

    const/16 v2, 0x9

    .line 7
    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 8
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->new:Ljava/util/UUID;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    .line 9
    sget-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->try:Ljava/util/UUID;

    invoke-static {v3, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v13

    .line 10
    invoke-static {}, Lorg/antlr/v4/runtime/atn/do;->values()[Lorg/antlr/v4/runtime/atn/do;

    move-result-object v3

    const/16 v4, 0xa

    aget-char v2, v10, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    aget-object v2, v3, v2

    const/16 v3, 0xb

    .line 11
    aget-char v4, v10, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    .line 12
    new-instance v14, Landroid/support/v4/static;

    invoke-direct {v14, v2, v4}, Landroid/support/v4/static;-><init>(Lorg/antlr/v4/runtime/atn/do;I)V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/16 v7, 0xc

    :goto_1
    const/4 v15, 0x0

    const v8, 0xffff

    const/16 v16, -0x1

    if-ge v6, v3, :cond_5

    add-int/lit8 v17, v7, 0x1

    .line 16
    aget-char v7, v10, v7

    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v7

    if-nez v7, :cond_1

    .line 17
    invoke-virtual {v14, v15}, Landroid/support/v4/static;->do(Landroid/support/v4/finally;)V

    move/from16 v7, v17

    goto :goto_3

    :cond_1
    add-int/lit8 v15, v17, 0x1

    .line 18
    aget-char v17, v10, v17

    invoke-static/range {v17 .. v17}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v12

    if-ne v12, v8, :cond_2

    const/4 v12, -0x1

    .line 19
    :cond_2
    invoke-virtual {v9, v7, v12}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->break(II)Landroid/support/v4/finally;

    move-result-object v8

    if-ne v7, v5, :cond_3

    add-int/lit8 v7, v15, 0x1

    .line 20
    aget-char v12, v10, v15

    invoke-static {v12}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v12

    .line 21
    new-instance v15, Landroid/support/v4/ob1;

    move-object v5, v8

    check-cast v5, Landroid/support/v4/fw0;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v15, v5, v12}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v7

    goto :goto_2

    .line 22
    :cond_3
    instance-of v5, v8, Landroid/support/v4/ea;

    if-eqz v5, :cond_4

    add-int/lit8 v5, v15, 0x1

    .line 23
    aget-char v7, v10, v15

    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v7

    .line 24
    new-instance v12, Landroid/support/v4/ob1;

    move-object v15, v8

    check-cast v15, Landroid/support/v4/ea;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v12, v15, v7}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v5

    .line 25
    :cond_4
    :goto_2
    invoke-virtual {v14, v8}, Landroid/support/v4/static;->do(Landroid/support/v4/finally;)V

    move v7, v15

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xc

    const/4 v12, 0x0

    goto :goto_1

    .line 26
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ob1;

    .line 27
    iget-object v5, v3, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/fw0;

    iget-object v6, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    iget-object v3, v3, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/finally;

    iput-object v3, v5, Landroid/support/v4/fw0;->switch:Landroid/support/v4/finally;

    goto :goto_4

    .line 28
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ob1;

    .line 29
    iget-object v4, v3, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/ea;

    iget-object v5, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    iget-object v3, v3, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ca;

    iput-object v3, v4, Landroid/support/v4/ea;->default:Landroid/support/v4/ca;

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v7, 0x1

    .line 30
    aget-char v3, v10, v7

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    move v4, v2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 31
    aget-char v4, v10, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    .line 32
    iget-object v6, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/jx;

    iput-boolean v11, v4, Landroid/support/v4/jx;->throws:Z

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    add-int/lit8 v0, v4, 0x1

    .line 33
    aget-char v2, v10, v4

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    move v4, v0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_9

    add-int/lit8 v3, v4, 0x1

    .line 34
    aget-char v4, v10, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    .line 35
    iget-object v5, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/xo1;

    iput-boolean v11, v4, Landroid/support/v4/xo1;->throws:Z

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v4, 0x1

    .line 36
    aget-char v2, v10, v4

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    .line 37
    iget-object v3, v14, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v4, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v3, v4, :cond_a

    .line 38
    new-array v3, v2, [I

    iput-object v3, v14, Landroid/support/v4/static;->goto:[I

    .line 39
    :cond_a
    new-array v3, v2, [Landroid/support/v4/xo1;

    iput-object v3, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    move v3, v0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_e

    add-int/lit8 v4, v3, 0x1

    .line 40
    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    .line 41
    iget-object v5, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/xo1;

    .line 42
    iget-object v5, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aput-object v3, v5, v0

    .line 43
    iget-object v3, v14, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v5, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v3, v5, :cond_c

    add-int/lit8 v3, v4, 0x1

    .line 44
    aget-char v4, v10, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    if-ne v4, v8, :cond_b

    const/4 v4, -0x1

    .line 45
    :cond_b
    iget-object v5, v14, Landroid/support/v4/static;->goto:[I

    aput v4, v5, v0

    .line 46
    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->try:Ljava/util/UUID;

    invoke-static {v4, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_d

    add-int/lit8 v4, v3, 0x1

    .line 47
    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    :cond_c
    move v3, v4

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 48
    :cond_e
    new-array v0, v2, [Landroid/support/v4/yo1;

    iput-object v0, v14, Landroid/support/v4/static;->new:[Landroid/support/v4/yo1;

    .line 49
    iget-object v0, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/finally;

    .line 50
    instance-of v4, v2, Landroid/support/v4/yo1;

    if-nez v4, :cond_f

    goto :goto_9

    .line 51
    :cond_f
    move-object v4, v2

    check-cast v4, Landroid/support/v4/yo1;

    .line 52
    iget-object v5, v14, Landroid/support/v4/static;->new:[Landroid/support/v4/yo1;

    iget v2, v2, Landroid/support/v4/finally;->for:I

    aput-object v4, v5, v2

    .line 53
    iget-object v5, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v2, v5, v2

    iput-object v4, v2, Landroid/support/v4/xo1;->switch:Landroid/support/v4/yo1;

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v3, 0x1

    .line 54
    aget-char v2, v10, v3

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    move v3, v0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_11

    add-int/lit8 v4, v3, 0x1

    .line 55
    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    .line 56
    iget-object v5, v14, Landroid/support/v4/static;->break:Ljava/util/List;

    iget-object v6, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/y72;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_a

    .line 57
    :cond_11
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case(Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v0

    invoke-direct {v9, v10, v3, v12, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->new([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 59
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case:Ljava/util/UUID;

    invoke-static {v2, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->else(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 60
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case(Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v1

    invoke-direct {v9, v10, v0, v12, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->new([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    :cond_12
    add-int/lit8 v1, v0, 0x1

    .line 61
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v7

    move/from16 v17, v1

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v7, :cond_13

    .line 62
    aget-char v0, v10, v17

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v5

    add-int/lit8 v0, v17, 0x1

    .line 63
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    add-int/lit8 v0, v17, 0x2

    .line 64
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    add-int/lit8 v0, v17, 0x3

    .line 65
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v18

    add-int/lit8 v0, v17, 0x4

    .line 66
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v19

    add-int/lit8 v0, v17, 0x5

    .line 67
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v20

    move-object/from16 v0, p0

    move-object v1, v14

    move v3, v5

    move v15, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move/from16 v6, v19

    move/from16 v19, v7

    move/from16 v7, v20

    const v11, 0xffff

    move-object v8, v12

    .line 68
    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->try(Landroid/support/v4/static;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v0

    .line 69
    iget-object v1, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/finally;

    .line 70
    invoke-virtual {v1, v0}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    add-int/lit8 v17, v17, 0x6

    add-int/lit8 v6, v18, 0x1

    move/from16 v7, v19

    const v8, 0xffff

    const/4 v11, 0x1

    const/4 v15, 0x0

    goto :goto_b

    :cond_13
    const v11, 0xffff

    .line 71
    iget-object v0, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/finally;

    const/4 v2, 0x0

    .line 72
    :goto_c
    invoke-virtual {v1}, Landroid/support/v4/finally;->for()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 73
    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    .line 74
    instance-of v4, v3, Landroid/support/v4/ap1;

    if-nez v4, :cond_15

    goto :goto_e

    .line 75
    :cond_15
    check-cast v3, Landroid/support/v4/ap1;

    .line 76
    iget-object v4, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    iget-object v5, v3, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v5, v5, Landroid/support/v4/finally;->for:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Landroid/support/v4/xo1;->throws:Z

    if-eqz v4, :cond_16

    .line 77
    iget v4, v3, Landroid/support/v4/ap1;->super:I

    if-nez v4, :cond_16

    goto :goto_d

    :cond_16
    const/4 v5, -0x1

    .line 78
    :goto_d
    new-instance v4, Landroid/support/v4/f80;

    iget-object v6, v3, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    invoke-direct {v4, v6, v5}, Landroid/support/v4/f80;-><init>(Landroid/support/v4/finally;I)V

    .line 79
    iget-object v5, v14, Landroid/support/v4/static;->new:[Landroid/support/v4/yo1;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v3, v3, Landroid/support/v4/finally;->for:I

    aget-object v3, v5, v3

    invoke-virtual {v3, v4}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 80
    :cond_17
    iget-object v0, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/finally;

    .line 81
    instance-of v2, v1, Landroid/support/v4/ea;

    if-eqz v2, :cond_1b

    .line 82
    move-object v2, v1

    check-cast v2, Landroid/support/v4/ea;

    iget-object v3, v2, Landroid/support/v4/ea;->default:Landroid/support/v4/ca;

    if-eqz v3, :cond_1a

    .line 83
    iget-object v4, v3, Landroid/support/v4/ca;->switch:Landroid/support/v4/ea;

    if-nez v4, :cond_19

    .line 84
    iput-object v2, v3, Landroid/support/v4/ca;->switch:Landroid/support/v4/ea;

    goto :goto_f

    .line 85
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 86
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 87
    :cond_1b
    :goto_f
    instance-of v2, v1, Landroid/support/v4/de1;

    if-eqz v2, :cond_1d

    .line 88
    check-cast v1, Landroid/support/v4/de1;

    const/4 v2, 0x0

    .line 89
    :goto_10
    invoke-virtual {v1}, Landroid/support/v4/finally;->for()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 90
    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 91
    instance-of v4, v3, Landroid/support/v4/ce1;

    if-eqz v4, :cond_1c

    .line 92
    check-cast v3, Landroid/support/v4/ce1;

    iput-object v1, v3, Landroid/support/v4/ce1;->extends:Landroid/support/v4/de1;

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 93
    :cond_1d
    instance-of v2, v1, Landroid/support/v4/k12;

    if-eqz v2, :cond_18

    .line 94
    check-cast v1, Landroid/support/v4/k12;

    const/4 v2, 0x0

    .line 95
    :goto_11
    invoke-virtual {v1}, Landroid/support/v4/finally;->for()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 96
    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 97
    instance-of v4, v3, Landroid/support/v4/j12;

    if-eqz v4, :cond_1e

    .line 98
    check-cast v3, Landroid/support/v4/j12;

    iput-object v1, v3, Landroid/support/v4/j12;->default:Landroid/support/v4/k12;

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    add-int/lit8 v0, v17, 0x1

    .line 99
    aget-char v1, v10, v17

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v1

    const/4 v2, 0x1

    :goto_12
    if-gt v2, v1, :cond_20

    add-int/lit8 v3, v0, 0x1

    .line 100
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    .line 101
    iget-object v4, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/jx;

    .line 102
    iget-object v4, v14, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v2, -0x1

    .line 103
    iput v4, v0, Landroid/support/v4/jx;->switch:I

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_12

    .line 104
    :cond_20
    iget-object v1, v14, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v2, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v1, v2, :cond_27

    if-eqz v13, :cond_23

    add-int/lit8 v1, v0, 0x1

    .line 105
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    iput-object v0, v14, Landroid/support/v4/static;->this:[Lorg/antlr/v4/runtime/atn/LexerAction;

    const/4 v0, 0x0

    .line 106
    :goto_13
    iget-object v2, v14, Landroid/support/v4/static;->this:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    .line 107
    invoke-static {}, Lorg/antlr/v4/runtime/atn/for;->values()[Lorg/antlr/v4/runtime/atn/for;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v10, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v1

    aget-object v1, v2, v1

    add-int/lit8 v2, v3, 0x1

    .line 108
    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    if-ne v3, v11, :cond_21

    const/4 v3, -0x1

    :cond_21
    add-int/lit8 v4, v2, 0x1

    .line 109
    aget-char v2, v10, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    if-ne v2, v11, :cond_22

    const/4 v2, -0x1

    .line 110
    :cond_22
    invoke-virtual {v9, v1, v3, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->goto(Lorg/antlr/v4/runtime/atn/for;II)Lorg/antlr/v4/runtime/atn/LexerAction;

    move-result-object v1

    .line 111
    iget-object v2, v14, Landroid/support/v4/static;->this:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_13

    .line 112
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/finally;

    const/4 v3, 0x0

    .line 114
    :goto_14
    invoke-virtual {v2}, Landroid/support/v4/finally;->for()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 115
    invoke-virtual {v2, v3}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v4

    .line 116
    instance-of v5, v4, Landroid/support/v4/u;

    if-nez v5, :cond_25

    goto :goto_15

    .line 117
    :cond_25
    move-object v5, v4

    check-cast v5, Landroid/support/v4/u;

    iget v6, v5, Landroid/support/v4/u;->final:I

    .line 118
    iget v5, v5, Landroid/support/v4/u;->super:I

    .line 119
    new-instance v7, Landroid/support/v4/ms0;

    invoke-direct {v7, v6, v5}, Landroid/support/v4/ms0;-><init>(II)V

    .line 120
    new-instance v5, Landroid/support/v4/u;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    invoke-direct {v5, v4, v6, v8, v10}, Landroid/support/v4/u;-><init>(Landroid/support/v4/finally;IIZ)V

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/finally;->break(ILorg/antlr/v4/runtime/atn/catch;)V

    .line 121
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 122
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    iput-object v0, v14, Landroid/support/v4/static;->this:[Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 123
    :cond_27
    invoke-virtual {v9, v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->this(Landroid/support/v4/static;)V

    .line 124
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do:Landroid/support/v4/default;

    invoke-virtual {v0}, Landroid/support/v4/default;->new()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 125
    invoke-virtual {v9, v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->super(Landroid/support/v4/static;)V

    .line 126
    :cond_28
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do:Landroid/support/v4/default;

    invoke-virtual {v0}, Landroid/support/v4/default;->if()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v14, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v1, Lorg/antlr/v4/runtime/atn/do;->PARSER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v0, v1, :cond_37

    .line 127
    iget-object v0, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v14, Landroid/support/v4/static;->goto:[I

    const/4 v0, 0x0

    .line 128
    :goto_16
    iget-object v1, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 129
    iget-object v1, v14, Landroid/support/v4/static;->goto:[I

    iget v2, v14, Landroid/support/v4/static;->else:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_29
    const/4 v0, 0x0

    .line 130
    :goto_17
    iget-object v1, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 131
    new-instance v1, Landroid/support/v4/q7;

    invoke-direct {v1}, Landroid/support/v4/q7;-><init>()V

    .line 132
    iput v0, v1, Landroid/support/v4/finally;->for:I

    .line 133
    invoke-virtual {v14, v1}, Landroid/support/v4/static;->do(Landroid/support/v4/finally;)V

    .line 134
    new-instance v2, Landroid/support/v4/ca;

    invoke-direct {v2}, Landroid/support/v4/ca;-><init>()V

    .line 135
    iput v0, v2, Landroid/support/v4/finally;->for:I

    .line 136
    invoke-virtual {v14, v2}, Landroid/support/v4/static;->do(Landroid/support/v4/finally;)V

    .line 137
    iput-object v2, v1, Landroid/support/v4/ea;->default:Landroid/support/v4/ca;

    .line 138
    invoke-virtual {v14, v1}, Landroid/support/v4/static;->if(Landroid/support/v4/jx;)I

    .line 139
    iput-object v1, v2, Landroid/support/v4/ca;->switch:Landroid/support/v4/ea;

    .line 140
    iget-object v3, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/support/v4/xo1;->throws:Z

    if-eqz v3, :cond_30

    .line 141
    iget-object v3, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/finally;

    .line 142
    iget v5, v4, Landroid/support/v4/finally;->for:I

    if-eq v5, v0, :cond_2b

    goto :goto_18

    .line 143
    :cond_2b
    instance-of v5, v4, Landroid/support/v4/j12;

    if-nez v5, :cond_2c

    goto :goto_18

    .line 144
    :cond_2c
    invoke-virtual {v4}, Landroid/support/v4/finally;->for()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v5

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 145
    instance-of v6, v5, Landroid/support/v4/fw0;

    if-nez v6, :cond_2d

    goto :goto_18

    .line 146
    :cond_2d
    iget-boolean v6, v5, Landroid/support/v4/finally;->new:Z

    if-eqz v6, :cond_2a

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v5

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v5, v5, Landroid/support/v4/yo1;

    if-eqz v5, :cond_2a

    goto :goto_19

    :cond_2e
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_2f

    .line 147
    move-object v3, v4

    check-cast v3, Landroid/support/v4/j12;

    iget-object v3, v3, Landroid/support/v4/j12;->default:Landroid/support/v4/k12;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    goto :goto_1a

    .line 148
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Couldn\'t identify final state of the precedence rule prefix section."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_30
    iget-object v3, v14, Landroid/support/v4/static;->new:[Landroid/support/v4/yo1;

    aget-object v4, v3, v0

    const/4 v3, 0x0

    .line 150
    :goto_1a
    iget-object v5, v14, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/finally;

    .line 151
    iget-object v6, v6, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/atn/catch;

    if-ne v7, v3, :cond_33

    goto :goto_1b

    .line 152
    :cond_33
    iget-object v8, v7, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    if-ne v8, v4, :cond_32

    .line 153
    iput-object v2, v7, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    goto :goto_1b

    .line 154
    :cond_34
    :goto_1c
    iget-object v3, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v4/finally;->for()I

    move-result v3

    if-lez v3, :cond_35

    .line 155
    iget-object v3, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v5, v3, v0

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v4/finally;->for()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-virtual {v5, v3}, Landroid/support/v4/finally;->goto(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    goto :goto_1c

    .line 157
    :cond_35
    iget-object v3, v14, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v3, v3, v0

    new-instance v5, Landroid/support/v4/f80;

    invoke-direct {v5, v1}, Landroid/support/v4/f80;-><init>(Landroid/support/v4/finally;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    .line 158
    new-instance v3, Landroid/support/v4/f80;

    invoke-direct {v3, v4}, Landroid/support/v4/f80;-><init>(Landroid/support/v4/finally;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    .line 159
    new-instance v3, Landroid/support/v4/h8;

    invoke-direct {v3}, Landroid/support/v4/h8;-><init>()V

    .line 160
    invoke-virtual {v14, v3}, Landroid/support/v4/static;->do(Landroid/support/v4/finally;)V

    .line 161
    new-instance v4, Landroid/support/v4/g4;

    iget-object v5, v14, Landroid/support/v4/static;->goto:[I

    aget v5, v5, v0

    invoke-direct {v4, v2, v5}, Landroid/support/v4/g4;-><init>(Landroid/support/v4/finally;I)V

    invoke-virtual {v3, v4}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    .line 162
    new-instance v2, Landroid/support/v4/f80;

    invoke-direct {v2, v3}, Landroid/support/v4/f80;-><init>(Landroid/support/v4/finally;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->if(Lorg/antlr/v4/runtime/atn/catch;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17

    .line 163
    :cond_36
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do:Landroid/support/v4/default;

    invoke-virtual {v0}, Landroid/support/v4/default;->new()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 164
    invoke-virtual {v9, v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->super(Landroid/support/v4/static;)V

    :cond_37
    return-object v14

    .line 165
    :cond_38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->goto:Ljava/util/UUID;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "Could not deserialize ATN with UUID %s (expected %s or a legacy UUID)."

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 167
    :cond_39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "Could not deserialize ATN with version %d (expected %d)."

    invoke-static {v4, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1e

    :goto_1d
    throw v2

    :goto_1e
    goto :goto_1d
.end method

.method public goto(Lorg/antlr/v4/runtime/atn/for;II)Lorg/antlr/v4/runtime/atn/LexerAction;
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$for;->do:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "The specified lexer action type %d is not valid."

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :pswitch_0
    new-instance p1, Landroid/support/v4/ws0;

    invoke-direct {p1, p2}, Landroid/support/v4/ws0;-><init>(I)V

    return-object p1

    .line 5
    :pswitch_1
    sget-object p1, Landroid/support/v4/vs0;->do:Landroid/support/v4/vs0;

    return-object p1

    .line 6
    :pswitch_2
    new-instance p1, Landroid/support/v4/us0;

    invoke-direct {p1, p2}, Landroid/support/v4/us0;-><init>(I)V

    return-object p1

    .line 7
    :pswitch_3
    sget-object p1, Landroid/support/v4/ts0;->do:Landroid/support/v4/ts0;

    return-object p1

    .line 8
    :pswitch_4
    sget-object p1, Landroid/support/v4/rs0;->do:Landroid/support/v4/rs0;

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Landroid/support/v4/qs0;

    invoke-direct {p1, p2}, Landroid/support/v4/qs0;-><init>(I)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Landroid/support/v4/ms0;

    invoke-direct {p1, p2, p3}, Landroid/support/v4/ms0;-><init>(II)V

    return-object p1

    .line 11
    :pswitch_7
    new-instance p1, Landroid/support/v4/ls0;

    invoke-direct {p1, p2}, Landroid/support/v4/ls0;-><init>(I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public if(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public super(Landroid/support/v4/static;)V
    .locals 6

    .line 1
    iget-object p1, p1, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/finally;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/finally;->else()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/finally;->for()I

    move-result v1

    if-gt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 3
    instance-of v1, v0, Landroid/support/v4/ce1;

    if-eqz v1, :cond_4

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/support/v4/ce1;

    iget-object v1, v1, Landroid/support/v4/ce1;->extends:Landroid/support/v4/de1;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 5
    :cond_4
    instance-of v1, v0, Landroid/support/v4/j12;

    if-eqz v1, :cond_9

    .line 6
    move-object v1, v0

    check-cast v1, Landroid/support/v4/j12;

    .line 7
    iget-object v4, v1, Landroid/support/v4/j12;->default:Landroid/support/v4/k12;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 8
    invoke-virtual {v1}, Landroid/support/v4/finally;->for()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v4, v4, Landroid/support/v4/i12;

    if-eqz v4, :cond_7

    .line 10
    invoke-virtual {v1, v3}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v4, v4, Landroid/support/v4/fw0;

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 11
    iget-boolean v1, v1, Landroid/support/v4/jx;->throws:Z

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    goto :goto_6

    .line 12
    :cond_7
    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v4, v4, Landroid/support/v4/fw0;

    if-eqz v4, :cond_8

    .line 13
    invoke-virtual {v1, v3}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v4, v4, Landroid/support/v4/i12;

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 14
    iget-boolean v1, v1, Landroid/support/v4/jx;->throws:Z

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    goto :goto_6

    .line 15
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 16
    :cond_9
    :goto_6
    instance-of v1, v0, Landroid/support/v4/k12;

    if-eqz v1, :cond_b

    .line 17
    invoke-virtual {v0}, Landroid/support/v4/finally;->for()I

    move-result v1

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v1

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v1, v1, Landroid/support/v4/j12;

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 19
    :cond_b
    instance-of v1, v0, Landroid/support/v4/fw0;

    if-eqz v1, :cond_d

    .line 20
    move-object v1, v0

    check-cast v1, Landroid/support/v4/fw0;

    iget-object v1, v1, Landroid/support/v4/fw0;->switch:Landroid/support/v4/finally;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 21
    :cond_d
    instance-of v1, v0, Landroid/support/v4/xo1;

    if-eqz v1, :cond_f

    .line 22
    move-object v1, v0

    check-cast v1, Landroid/support/v4/xo1;

    iget-object v1, v1, Landroid/support/v4/xo1;->switch:Landroid/support/v4/yo1;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 23
    :cond_f
    instance-of v1, v0, Landroid/support/v4/ea;

    if-eqz v1, :cond_11

    .line 24
    move-object v1, v0

    check-cast v1, Landroid/support/v4/ea;

    iget-object v1, v1, Landroid/support/v4/ea;->default:Landroid/support/v4/ca;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 25
    :cond_11
    instance-of v1, v0, Landroid/support/v4/ca;

    if-eqz v1, :cond_13

    .line 26
    move-object v1, v0

    check-cast v1, Landroid/support/v4/ca;

    iget-object v1, v1, Landroid/support/v4/ca;->switch:Landroid/support/v4/ea;

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    .line 27
    :cond_13
    instance-of v1, v0, Landroid/support/v4/jx;

    if-eqz v1, :cond_16

    .line 28
    check-cast v0, Landroid/support/v4/jx;

    .line 29
    invoke-virtual {v0}, Landroid/support/v4/finally;->for()I

    move-result v1

    if-le v1, v3, :cond_14

    iget v0, v0, Landroid/support/v4/jx;->switch:I

    if-ltz v0, :cond_15

    :cond_14
    const/4 v2, 0x1

    :cond_15
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    goto/16 :goto_0

    .line 30
    :cond_16
    invoke-virtual {v0}, Landroid/support/v4/finally;->for()I

    move-result v1

    if-le v1, v3, :cond_17

    instance-of v0, v0, Landroid/support/v4/yo1;

    if-eqz v0, :cond_18

    :cond_17
    const/4 v2, 0x1

    :cond_18
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method public this(Landroid/support/v4/static;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/finally;

    .line 2
    instance-of v2, v1, Landroid/support/v4/j12;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, p1, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    iget v3, v1, Landroid/support/v4/finally;->for:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Landroid/support/v4/xo1;->throws:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/support/v4/finally;->for()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 5
    instance-of v4, v2, Landroid/support/v4/fw0;

    if-eqz v4, :cond_0

    .line 6
    iget-boolean v4, v2, Landroid/support/v4/finally;->new:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v2, v2, Landroid/support/v4/yo1;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Landroid/support/v4/j12;

    iput-boolean v3, v1, Landroid/support/v4/j12;->extends:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public try(Landroid/support/v4/static;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/catch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/static;",
            "IIIIII",
            "Ljava/util/List<",
            "Landroid/support/v4/sn0;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/catch;"
        }
    .end annotation

    .line 1
    iget-object p3, p1, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/finally;

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The specified transition type is not valid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    new-instance p1, Lorg/antlr/v4/runtime/atn/try;

    invoke-direct {p1, p3, p5}, Lorg/antlr/v4/runtime/atn/try;-><init>(Landroid/support/v4/finally;I)V

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Landroid/support/v4/bg2;

    invoke-direct {p1, p3}, Landroid/support/v4/bg2;-><init>(Landroid/support/v4/finally;)V

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Landroid/support/v4/o41;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/sn0;

    invoke-direct {p1, p3, p2}, Landroid/support/v4/o41;-><init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V

    return-object p1

    .line 6
    :pswitch_3
    new-instance p1, Landroid/support/v4/lx1;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/sn0;

    invoke-direct {p1, p3, p2}, Landroid/support/v4/lx1;-><init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V

    return-object p1

    .line 7
    :pswitch_4
    new-instance p1, Landroid/support/v4/u;

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p1, p3, p5, p6, p4}, Landroid/support/v4/u;-><init>(Landroid/support/v4/finally;IIZ)V

    return-object p1

    :pswitch_5
    if-eqz p7, :cond_1

    .line 8
    new-instance p1, Landroid/support/v4/g4;

    invoke-direct {p1, p3, v1}, Landroid/support/v4/g4;-><init>(Landroid/support/v4/finally;I)V

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Landroid/support/v4/g4;

    invoke-direct {p1, p3, p5}, Landroid/support/v4/g4;-><init>(Landroid/support/v4/finally;I)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lorg/antlr/v4/runtime/atn/case;

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    invoke-direct {p1, p3, p5, p6, p4}, Lorg/antlr/v4/runtime/atn/case;-><init>(Landroid/support/v4/finally;IIZ)V

    return-object p1

    .line 11
    :pswitch_7
    new-instance p2, Landroid/support/v4/ap1;

    iget-object p1, p1, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/xo1;

    invoke-direct {p2, p1, p6, p7, p3}, Landroid/support/v4/ap1;-><init>(Landroid/support/v4/xo1;IILandroid/support/v4/finally;)V

    return-object p2

    :pswitch_8
    if-eqz p7, :cond_3

    .line 12
    new-instance p1, Landroid/support/v4/il1;

    invoke-direct {p1, p3, v1, p6}, Landroid/support/v4/il1;-><init>(Landroid/support/v4/finally;II)V

    return-object p1

    .line 13
    :cond_3
    new-instance p1, Landroid/support/v4/il1;

    invoke-direct {p1, p3, p5, p6}, Landroid/support/v4/il1;-><init>(Landroid/support/v4/finally;II)V

    return-object p1

    .line 14
    :pswitch_9
    new-instance p1, Landroid/support/v4/f80;

    invoke-direct {p1, p3}, Landroid/support/v4/f80;-><init>(Landroid/support/v4/finally;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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
