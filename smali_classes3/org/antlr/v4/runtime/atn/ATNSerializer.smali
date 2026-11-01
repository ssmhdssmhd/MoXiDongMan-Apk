.class public Lorg/antlr/v4/runtime/atn/ATNSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;
    }
.end annotation


# static fields
.field public static final synthetic for:Z


# instance fields
.field public do:Landroid/support/v4/static;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/static;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/static;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/static;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    .line 5
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->if:Ljava/util/List;

    return-void
.end method

.method private break(Lorg/antlr/v4/runtime/misc/do;I)V
    .locals 1

    int-to-char v0, p2

    .line 1
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    shr-int/lit8 p2, p2, 0x10

    int-to-char p2, p2

    .line 2
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    return-void
.end method

.method public static case(Landroid/support/v4/static;)[C
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->try(Landroid/support/v4/static;)Lorg/antlr/v4/runtime/misc/do;

    move-result-object p0

    invoke-static {p0}, Lorg/antlr/v4/runtime/misc/for;->const(Lorg/antlr/v4/runtime/misc/do;)[C

    move-result-object p0

    return-object p0
.end method

.method private catch(Lorg/antlr/v4/runtime/misc/do;J)V
    .locals 1

    long-to-int v0, p2

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->break(Lorg/antlr/v4/runtime/misc/do;I)V

    const/16 v0, 0x20

    shr-long/2addr p2, v0

    long-to-int p3, p2

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->break(Lorg/antlr/v4/runtime/misc/do;I)V

    return-void
.end method

.method private static class(Lorg/antlr/v4/runtime/misc/do;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/do;",
            "Ljava/util/Collection<",
            "Landroid/support/v4/sn0;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/sn0;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/sn0;->catch()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/rn0;

    iget v4, v4, Landroid/support/v4/rn0;->if:I

    if-ne v4, v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/sn0;->catch()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/sn0;->catch()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 8
    :goto_0
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/sn0;->catch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/rn0;

    .line 10
    iget v4, v2, Landroid/support/v4/rn0;->do:I

    if-ne v4, v1, :cond_3

    .line 11
    iget v4, v2, Landroid/support/v4/rn0;->if:I

    if-ne v4, v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p2, p0, v3}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/do;I)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {p2, p0, v4}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/do;I)V

    .line 14
    :goto_2
    iget v2, v2, Landroid/support/v4/rn0;->if:I

    invoke-interface {p2, p0, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/do;I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private const(Lorg/antlr/v4/runtime/misc/do;Ljava/util/UUID;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->catch(Lorg/antlr/v4/runtime/misc/do;J)V

    .line 2
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->catch(Lorg/antlr/v4/runtime/misc/do;J)V

    return-void
.end method

.method public static synthetic do(Lorg/antlr/v4/runtime/atn/ATNSerializer;Lorg/antlr/v4/runtime/misc/do;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->break(Lorg/antlr/v4/runtime/misc/do;I)V

    return-void
.end method

.method public static else(Landroid/support/v4/static;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->case(Landroid/support/v4/static;)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private if(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_5

    add-int/lit8 v2, p3, 0x1

    .line 1
    aget-char p3, p2, p3

    invoke-static {p3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result p3

    add-int v3, v1, p5

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .line 3
    aget-char v2, p2, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    const/4 v4, -0x1

    .line 4
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->goto(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, p3, :cond_4

    if-nez v2, :cond_2

    if-lez v4, :cond_3

    :cond_2
    const-string v5, ", "

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    invoke-interface {p6, p2, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v5

    .line 7
    invoke-interface {p6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 8
    invoke-interface {p6, p2, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v6

    .line 9
    invoke-interface {p6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v7

    add-int/2addr v3, v7

    .line 10
    invoke-virtual {p0, v5}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->goto(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->goto(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string p3, "\n"

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move p3, v3

    goto :goto_0

    :cond_5
    return p3
.end method

.method public static new(Landroid/support/v4/static;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/static;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->try(Landroid/support/v4/static;)Lorg/antlr/v4/runtime/misc/do;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/for;->const(Lorg/antlr/v4/runtime/misc/do;)[C

    move-result-object v0

    .line 3
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {v1, p0, p1}, Lorg/antlr/v4/runtime/atn/ATNSerializer;-><init>(Landroid/support/v4/static;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->for([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(Landroid/support/v4/static;)Lorg/antlr/v4/runtime/misc/do;
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;-><init>(Landroid/support/v4/static;)V

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->this()Lorg/antlr/v4/runtime/misc/do;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public for([C)Ljava/lang/String;
    .locals 17

    move-object/from16 v7, p0

    .line 1
    const-class v0, Landroid/support/v4/static;

    invoke-virtual/range {p1 .. p1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [C

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :goto_0
    array-length v3, v8

    const/4 v4, 0x2

    if-ge v2, v3, :cond_0

    .line 3
    aget-char v3, v8, v2

    sub-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    .line 5
    aget-char v2, v8, v10

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    .line 6
    sget v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->if:I

    if-ne v2, v3, :cond_10

    .line 7
    invoke-static {v8, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->final([CI)Ljava/util/UUID;

    move-result-object v2

    .line 8
    sget-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->goto:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 9
    aget-char v2, v8, v1

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    const-string v3, "max type "

    .line 10
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v4, 0xc

    :goto_1
    const-string v12, ":"

    const-string v13, " "

    if-ge v3, v0, :cond_6

    add-int/lit8 v5, v4, 0x1

    .line 12
    aget-char v4, v8, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 13
    aget-char v5, v8, v5

    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v5

    const v14, 0xffff

    if-ne v5, v14, :cond_2

    const/4 v5, -0x1

    :cond_2
    if-ne v4, v2, :cond_3

    add-int/lit8 v14, v6, 0x1

    .line 14
    aget-char v6, v8, v6

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v6

    .line 15
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    const/4 v14, 0x4

    if-eq v4, v14, :cond_5

    const/4 v14, 0x5

    if-eq v4, v14, :cond_5

    const/4 v14, 0x3

    if-ne v4, v14, :cond_4

    goto :goto_2

    :cond_4
    const-string v14, ""

    move-object/from16 v16, v14

    move v14, v6

    move-object/from16 v6, v16

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v14, v6, 0x1

    .line 16
    aget-char v6, v8, v6

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v6

    .line 17
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    :goto_3
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/support/v4/finally;->return:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v14

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v4, 0x1

    .line 19
    aget-char v2, v8, v4

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_7

    add-int/lit8 v4, v0, 0x1

    .line 20
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v0, 0x1

    .line 21
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 22
    aget-char v2, v8, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v2, 0x1

    .line 23
    aget-char v2, v8, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_a

    add-int/lit8 v4, v0, 0x1

    .line 24
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    .line 25
    iget-object v5, v7, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v5, v5, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v6, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    const-string v14, "rule "

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v4, 0x1

    .line 26
    aget-char v4, v8, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    .line 27
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v5

    goto :goto_8

    .line 28
    :cond_9
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v4

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v0, 0x1

    .line 29
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_b

    add-int/lit8 v4, v2, 0x1

    .line 30
    aget-char v2, v8, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v2

    const-string v5, "mode "

    .line 31
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_9

    :cond_b
    add-int/lit8 v3, v2, 0x1

    .line 32
    aget-char v0, v8, v2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v14

    const/4 v5, 0x0

    .line 33
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case(Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v8

    move v4, v14

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->if(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 34
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    .line 35
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case(Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v6

    move-object/from16 v0, p0

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->if(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 36
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_c

    .line 37
    aget-char v3, v8, v1

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    .line 38
    aget-char v4, v8, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    .line 39
    aget-char v5, v8, v5

    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v5

    add-int/lit8 v6, v1, 0x3

    .line 40
    aget-char v6, v8, v6

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v6

    add-int/lit8 v14, v1, 0x4

    .line 41
    aget-char v14, v8, v14

    invoke-static {v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v14

    add-int/lit8 v15, v1, 0x5

    .line 42
    aget-char v15, v8, v15

    invoke-static {v15}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v15

    .line 43
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/antlr/v4/runtime/atn/catch;->class:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v0, v1, 0x1

    .line 44
    aget-char v1, v8, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_d

    add-int/lit8 v3, v0, 0x1

    .line 45
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    .line 46
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_b

    .line 47
    :cond_d
    iget-object v1, v7, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v1, v1, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v2, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v1, v2, :cond_e

    add-int/lit8 v1, v0, 0x1

    .line 48
    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v0

    :goto_c
    if-ge v10, v0, :cond_e

    .line 49
    invoke-static {}, Lorg/antlr/v4/runtime/atn/for;->values()[Lorg/antlr/v4/runtime/atn/for;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v8, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result v1

    aget-object v1, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 50
    aget-char v2, v8, v3

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    add-int/lit8 v2, v1, 0x1

    .line 51
    aget-char v1, v8, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    add-int/lit8 v10, v10, 0x1

    move v1, v2

    goto :goto_c

    .line 52
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v10

    aput-object v3, v4, v1

    const-string v1, "Could not deserialize ATN with UUID %s (expected %s)."

    invoke-static {v5, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Could not deserialize ATN with version %d (expected %d)."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_d
    throw v2

    :goto_e
    goto :goto_d
.end method

.method public goto(I)Ljava/lang/String;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "EOF"

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v0, v0, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v1, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v0, v1, :cond_6

    if-ltz p1, :cond_6

    const v0, 0xffff

    if-gt p1, v0, :cond_6

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    const/16 v1, 0x5c

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    int-to-char v1, p1

    .line 2
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "\'\\n\'"

    return-object p1

    :pswitch_1
    const-string p1, "\'\\t\'"

    return-object p1

    :pswitch_2
    const-string p1, "\'\\b\'"

    return-object p1

    :cond_2
    const-string p1, "\'\\\\\'"

    return-object p1

    :cond_3
    const-string p1, "\'\\\'\'"

    return-object p1

    :cond_4
    const-string p1, "\'\\r\'"

    return-object p1

    :cond_5
    const-string p1, "\'\\f\'"

    return-object p1

    .line 6
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->if:Ljava/util/List;

    if-eqz v0, :cond_7

    if-ltz p1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 7
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 8
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public this()Lorg/antlr/v4/runtime/misc/do;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lorg/antlr/v4/runtime/misc/do;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/misc/do;-><init>()V

    .line 2
    sget v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->if:I

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 3
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->goto:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->const(Lorg/antlr/v4/runtime/misc/do;Ljava/util/UUID;)V

    .line 4
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 5
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget v2, v2, Landroid/support/v4/static;->else:I

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 6
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    new-instance v3, Lorg/antlr/v4/runtime/misc/do;

    invoke-direct {v3}, Lorg/antlr/v4/runtime/misc/do;-><init>()V

    .line 8
    new-instance v4, Lorg/antlr/v4/runtime/misc/do;

    invoke-direct {v4}, Lorg/antlr/v4/runtime/misc/do;-><init>()V

    .line 9
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v5, v5, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 10
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v5, v5, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x7

    const/4 v10, -0x1

    const v11, 0xffff

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/finally;

    if-nez v8, :cond_1

    .line 11
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v8}, Landroid/support/v4/finally;->new()I

    move-result v12

    .line 13
    instance-of v13, v8, Landroid/support/v4/jx;

    if-eqz v13, :cond_2

    move-object v13, v8

    check-cast v13, Landroid/support/v4/jx;

    iget-boolean v13, v13, Landroid/support/v4/jx;->throws:Z

    if-eqz v13, :cond_2

    .line 14
    iget v13, v8, Landroid/support/v4/finally;->if:I

    invoke-virtual {v3, v13}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 15
    :cond_2
    instance-of v13, v8, Landroid/support/v4/xo1;

    if-eqz v13, :cond_3

    move-object v13, v8

    check-cast v13, Landroid/support/v4/xo1;

    iget-boolean v13, v13, Landroid/support/v4/xo1;->throws:Z

    if-eqz v13, :cond_3

    .line 16
    iget v13, v8, Landroid/support/v4/finally;->if:I

    invoke-virtual {v4, v13}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 17
    :cond_3
    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 18
    iget v12, v8, Landroid/support/v4/finally;->for:I

    if-ne v12, v10, :cond_4

    .line 19
    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 21
    :goto_1
    invoke-virtual {v8}, Landroid/support/v4/finally;->new()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_5

    .line 22
    move-object v10, v8

    check-cast v10, Landroid/support/v4/fw0;

    iget-object v10, v10, Landroid/support/v4/fw0;->switch:Landroid/support/v4/finally;

    iget v10, v10, Landroid/support/v4/finally;->if:I

    invoke-virtual {v1, v10}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_2

    .line 23
    :cond_5
    instance-of v10, v8, Landroid/support/v4/ea;

    if-eqz v10, :cond_6

    .line 24
    move-object v10, v8

    check-cast v10, Landroid/support/v4/ea;

    iget-object v10, v10, Landroid/support/v4/ea;->default:Landroid/support/v4/ca;

    iget v10, v10, Landroid/support/v4/finally;->if:I

    invoke-virtual {v1, v10}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 25
    :cond_6
    :goto_2
    invoke-virtual {v8}, Landroid/support/v4/finally;->new()I

    move-result v10

    if-eq v10, v9, :cond_7

    .line 26
    invoke-virtual {v8}, Landroid/support/v4/finally;->for()I

    move-result v10

    add-int/2addr v7, v10

    :cond_7
    const/4 v10, 0x0

    .line 27
    :goto_3
    invoke-virtual {v8}, Landroid/support/v4/finally;->for()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 28
    invoke-virtual {v8, v10}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v11

    .line 29
    sget-object v12, Lorg/antlr/v4/runtime/atn/catch;->const:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, v9, :cond_8

    const/16 v13, 0x8

    if-ne v12, v13, :cond_9

    .line 30
    :cond_8
    check-cast v11, Landroid/support/v4/lx1;

    .line 31
    iget-object v11, v11, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 32
    :cond_a
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    const/4 v5, 0x0

    .line 33
    :goto_4
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v8

    if-ge v5, v8, :cond_b

    .line 34
    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 35
    :cond_b
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    const/4 v3, 0x0

    .line 36
    :goto_5
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 37
    invoke-virtual {v4, v3}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 38
    :cond_c
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v3, v3, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    array-length v3, v3

    .line 39
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_f

    .line 40
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v5, v5, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v5, v5, v4

    .line 41
    iget v5, v5, Landroid/support/v4/finally;->if:I

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 42
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v8, v5, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v12, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v8, v12, :cond_e

    .line 43
    iget-object v5, v5, Landroid/support/v4/static;->goto:[I

    aget v8, v5, v4

    if-ne v8, v10, :cond_d

    .line 44
    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_7

    .line 45
    :cond_d
    aget v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 46
    :cond_f
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v3, v3, Landroid/support/v4/static;->break:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 47
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    if-lez v3, :cond_10

    .line 48
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v3, v3, Landroid/support/v4/static;->break:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/finally;

    .line 49
    iget v4, v4, Landroid/support/v4/finally;->if:I

    invoke-virtual {v1, v4}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_8

    .line 50
    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/sn0;

    .line 53
    invoke-virtual {v5}, Landroid/support/v4/sn0;->class()I

    move-result v8

    if-gt v8, v11, :cond_11

    .line 54
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 55
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 56
    :cond_12
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNSerializer$do;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$do;-><init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V

    invoke-static {v1, v3, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->class(Lorg/antlr/v4/runtime/misc/do;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V

    .line 57
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNSerializer$if;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$if;-><init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V

    invoke-static {v1, v4, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->class(Lorg/antlr/v4/runtime/misc/do;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/sn0;

    add-int/lit8 v12, v5, 0x1

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v12

    goto :goto_a

    .line 61
    :cond_13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/sn0;

    add-int/lit8 v8, v5, 0x1

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v8

    goto :goto_b

    .line 63
    :cond_14
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 64
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v3, v3, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/finally;

    if-nez v4, :cond_16

    goto :goto_c

    .line 65
    :cond_16
    invoke-virtual {v4}, Landroid/support/v4/finally;->new()I

    move-result v7

    if-ne v7, v9, :cond_17

    goto :goto_c

    :cond_17
    const/4 v7, 0x0

    .line 66
    :goto_d
    invoke-virtual {v4}, Landroid/support/v4/finally;->for()I

    move-result v8

    if-ge v7, v8, :cond_15

    .line 67
    invoke-virtual {v4, v7}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v8

    .line 68
    iget-object v12, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v12, v12, Landroid/support/v4/static;->do:Ljava/util/List;

    iget-object v13, v8, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v13, v13, Landroid/support/v4/finally;->if:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1b

    .line 69
    iget v12, v4, Landroid/support/v4/finally;->if:I

    .line 70
    iget-object v13, v8, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v13, v13, Landroid/support/v4/finally;->if:I

    .line 71
    sget-object v14, Lorg/antlr/v4/runtime/atn/catch;->const:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    const/4 v8, 0x0

    :cond_18
    :goto_e
    const/4 v9, 0x0

    :goto_f
    const/4 v15, 0x0

    goto/16 :goto_11

    .line 72
    :pswitch_1
    check-cast v8, Lorg/antlr/v4/runtime/atn/try;

    .line 73
    iget v8, v8, Lorg/antlr/v4/runtime/atn/try;->final:I

    goto :goto_e

    .line 74
    :pswitch_2
    check-cast v8, Landroid/support/v4/lx1;

    iget-object v8, v8, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_e

    .line 75
    :pswitch_3
    check-cast v8, Landroid/support/v4/lx1;

    iget-object v8, v8, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_e

    .line 76
    :pswitch_4
    check-cast v8, Landroid/support/v4/u;

    .line 77
    iget v15, v8, Landroid/support/v4/u;->final:I

    .line 78
    iget v9, v8, Landroid/support/v4/u;->super:I

    if-ne v9, v10, :cond_19

    const v9, 0xffff

    .line 79
    :cond_19
    iget-boolean v8, v8, Landroid/support/v4/u;->throw:Z

    move/from16 v16, v9

    move v9, v8

    move v8, v15

    move/from16 v15, v16

    goto :goto_11

    .line 80
    :pswitch_5
    check-cast v8, Landroid/support/v4/g4;

    iget v8, v8, Landroid/support/v4/g4;->final:I

    if-ne v8, v10, :cond_18

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_f

    .line 81
    :pswitch_6
    check-cast v8, Lorg/antlr/v4/runtime/atn/case;

    .line 82
    iget v9, v8, Lorg/antlr/v4/runtime/atn/case;->final:I

    .line 83
    iget v15, v8, Lorg/antlr/v4/runtime/atn/case;->super:I

    .line 84
    iget-boolean v8, v8, Lorg/antlr/v4/runtime/atn/case;->throw:Z

    goto :goto_10

    .line 85
    :pswitch_7
    check-cast v8, Landroid/support/v4/ap1;

    iget-object v9, v8, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    iget v13, v9, Landroid/support/v4/finally;->if:I

    .line 86
    iget-object v9, v8, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v9, v9, Landroid/support/v4/finally;->if:I

    .line 87
    iget v15, v8, Landroid/support/v4/ap1;->final:I

    .line 88
    iget v8, v8, Landroid/support/v4/ap1;->super:I

    :goto_10
    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    goto :goto_11

    .line 89
    :pswitch_8
    check-cast v8, Landroid/support/v4/il1;

    iget v9, v8, Landroid/support/v4/il1;->final:I

    .line 90
    iget v8, v8, Landroid/support/v4/il1;->super:I

    move v15, v8

    if-ne v9, v10, :cond_1a

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_11

    :cond_1a
    move v8, v9

    const/4 v9, 0x0

    .line 91
    :goto_11
    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 92
    invoke-virtual {v1, v13}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 93
    invoke-virtual {v1, v14}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 94
    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 95
    invoke-virtual {v1, v15}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 96
    invoke-virtual {v1, v9}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x7

    goto/16 :goto_d

    .line 97
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot serialize a transition to a removed state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1c
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 100
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/jx;

    .line 101
    iget v3, v3, Landroid/support/v4/finally;->if:I

    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_12

    .line 102
    :cond_1d
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v3, v2, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v4, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne v3, v4, :cond_24

    .line 103
    iget-object v2, v2, Landroid/support/v4/static;->this:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 104
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->this:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_24

    aget-object v7, v2, v4

    .line 105
    invoke-interface {v7}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 106
    sget-object v8, Lorg/antlr/v4/runtime/atn/ATNSerializer$for;->do:[I

    invoke-interface {v7}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v7}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/for;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "The specified lexer action type %s is not valid."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :pswitch_9
    check-cast v7, Landroid/support/v4/ws0;

    invoke-virtual {v7}, Landroid/support/v4/ws0;->do()I

    move-result v7

    if-eq v7, v10, :cond_1e

    goto :goto_14

    :cond_1e
    const v7, 0xffff

    .line 110
    :goto_14
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 111
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto/16 :goto_1a

    .line 112
    :pswitch_a
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 113
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1a

    .line 114
    :pswitch_b
    check-cast v7, Landroid/support/v4/us0;

    invoke-virtual {v7}, Landroid/support/v4/us0;->do()I

    move-result v7

    if-eq v7, v10, :cond_1f

    goto :goto_15

    :cond_1f
    const v7, 0xffff

    .line 115
    :goto_15
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 116
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1a

    .line 117
    :pswitch_c
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 118
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1a

    .line 119
    :pswitch_d
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 120
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1a

    .line 121
    :pswitch_e
    check-cast v7, Landroid/support/v4/qs0;

    invoke-virtual {v7}, Landroid/support/v4/qs0;->do()I

    move-result v7

    if-eq v7, v10, :cond_20

    goto :goto_16

    :cond_20
    const v7, 0xffff

    .line 122
    :goto_16
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 123
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1a

    .line 124
    :pswitch_f
    check-cast v7, Landroid/support/v4/ms0;

    invoke-virtual {v7}, Landroid/support/v4/ms0;->if()I

    move-result v8

    .line 125
    invoke-virtual {v7}, Landroid/support/v4/ms0;->do()I

    move-result v7

    if-eq v8, v10, :cond_21

    goto :goto_17

    :cond_21
    const v8, 0xffff

    .line 126
    :goto_17
    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    if-eq v7, v10, :cond_22

    goto :goto_18

    :cond_22
    const v7, 0xffff

    .line 127
    :goto_18
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    goto :goto_1a

    .line 128
    :pswitch_10
    check-cast v7, Landroid/support/v4/ls0;

    invoke-virtual {v7}, Landroid/support/v4/ls0;->do()I

    move-result v7

    if-eq v7, v10, :cond_23

    goto :goto_19

    :cond_23
    const v7, 0xffff

    .line 129
    :goto_19
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    .line 130
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/do;->do(I)V

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 131
    :cond_24
    :goto_1b
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/do;->throw()I

    move-result v2

    if-ge v5, v2, :cond_26

    .line 132
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v2

    if-ltz v2, :cond_25

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v2

    if-gt v2, v11, :cond_25

    .line 133
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    and-int/2addr v2, v11

    .line 134
    invoke-virtual {v1, v5, v2}, Lorg/antlr/v4/runtime/misc/do;->super(II)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 135
    :cond_25
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialized ATN data element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/do;->catch(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " element "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
