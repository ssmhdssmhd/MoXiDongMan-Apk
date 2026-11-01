.class public abstract Lorg/antlr/v4/runtime/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/CharStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/case$for;,
        Lorg/antlr/v4/runtime/case$if;,
        Lorg/antlr/v4/runtime/case$new;
    }
.end annotation


# static fields
.field public static final synthetic new:Z


# instance fields
.field public final do:I

.field public for:I

.field public final if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lorg/antlr/v4/runtime/case;->do:I

    .line 4
    iput-object p3, p0, Lorg/antlr/v4/runtime/case;->if:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/antlr/v4/runtime/case;->for:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lorg/antlr/v4/runtime/case$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/case;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static do(Lorg/antlr/v4/runtime/try;)Lorg/antlr/v4/runtime/case;
    .locals 1

    const-string v0, "<unknown>"

    .line 1
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/case;->if(Lorg/antlr/v4/runtime/try;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lorg/antlr/v4/runtime/try;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;
    .locals 16

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/case$do;->do:[I

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->case()Lorg/antlr/v4/runtime/try$for;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/antlr/v4/runtime/case$for;

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->goto()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->break()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->else()[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->do()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lorg/antlr/v4/runtime/case$for;-><init>(IILjava/lang/String;[IILorg/antlr/v4/runtime/case$do;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/case$if;

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->goto()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->break()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->new()[C

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->do()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lorg/antlr/v4/runtime/case$if;-><init>(IILjava/lang/String;[CILorg/antlr/v4/runtime/case$do;)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/case$new;

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->goto()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->break()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->for()[B

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/try;->do()I

    move-result v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v15}, Lorg/antlr/v4/runtime/case$new;-><init>(IILjava/lang/String;[BILorg/antlr/v4/runtime/case$do;)V

    return-object v0
.end method


# virtual methods
.method public final consume()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/case;->do:I

    iget v1, p0, Lorg/antlr/v4/runtime/case;->for:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lorg/antlr/v4/runtime/case;->for:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract for()Ljava/lang/Object;
.end method

.method public final getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/case;->if:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/case;->if:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "<unknown>"

    return-object v0
.end method

.method public final index()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/case;->for:I

    return v0
.end method

.method public final mark()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final release(I)V
    .locals 0

    return-void
.end method

.method public final seek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/antlr/v4/runtime/case;->for:I

    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/case;->do:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/case;->do:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
