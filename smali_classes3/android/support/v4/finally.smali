.class public abstract Landroid/support/v4/finally;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x2

.field public static final catch:I = 0x3

.field public static final class:I = 0x4

.field public static final const:I = 0x5

.field public static final else:I = 0x4

.field public static final final:I = 0x6

.field public static final goto:I = 0x0

.field public static final import:I = 0xa

.field public static final native:I = 0xb

.field public static final public:I = 0xc

.field public static final return:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final static:I = -0x1

.field public static final super:I = 0x7

.field public static final this:I = 0x1

.field public static final throw:I = 0x8

.field public static final while:I = 0x9


# instance fields
.field public case:Landroid/support/v4/sn0;

.field public do:Landroid/support/v4/static;

.field public for:I

.field public if:I

.field public new:Z

.field public final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/catch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "INVALID"

    const-string v1, "BASIC"

    const-string v2, "RULE_START"

    const-string v3, "BLOCK_START"

    const-string v4, "PLUS_BLOCK_START"

    const-string v5, "STAR_BLOCK_START"

    const-string v6, "TOKEN_START"

    const-string v7, "RULE_STOP"

    const-string v8, "BLOCK_END"

    const-string v9, "STAR_LOOP_BACK"

    const-string v10, "STAR_LOOP_ENTRY"

    const-string v11, "PLUS_LOOP_BACK"

    const-string v12, "LOOP_END"

    .line 1
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/v4/finally;->return:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v4/finally;->do:Landroid/support/v4/static;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/support/v4/finally;->if:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/finally;->new:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public break(ILorg/antlr/v4/runtime/atn/catch;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public case()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public catch(I)Lorg/antlr/v4/runtime/atn/catch;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/catch;

    return-object p1
.end method

.method public do(ILorg/antlr/v4/runtime/atn/catch;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/finally;->new:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/finally;->new:Z

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/finally;->if:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "ATN state %d has both epsilon and non-epsilon transitions.\n"

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 5
    iput-boolean v2, p0, Landroid/support/v4/finally;->new:Z

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/catch;

    .line 7
    iget-object v4, v3, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v4, v4, Landroid/support/v4/finally;->if:I

    iget-object v5, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v5, v5, Landroid/support/v4/finally;->if:I

    if-ne v4, v5, :cond_2

    .line 8
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/catch;->for()Landroid/support/v4/sn0;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/catch;->for()Landroid/support/v4/sn0;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/catch;->for()Landroid/support/v4/sn0;

    move-result-object v4

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/catch;->for()Landroid/support/v4/sn0;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/sn0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 10
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/finally;->new:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/support/v4/finally;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/finally;->if:I

    check-cast p1, Landroid/support/v4/finally;

    iget p1, p1, Landroid/support/v4/finally;->if:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public goto(I)Lorg/antlr/v4/runtime/atn/catch;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/catch;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/finally;->if:I

    return v0
.end method

.method public if(Lorg/antlr/v4/runtime/atn/catch;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/finally;->do(ILorg/antlr/v4/runtime/atn/catch;)V

    return-void
.end method

.method public abstract new()I
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/finally;->for:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/finally;->if:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()[Lorg/antlr/v4/runtime/atn/catch;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/finally;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/catch;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/catch;

    return-object v0
.end method
