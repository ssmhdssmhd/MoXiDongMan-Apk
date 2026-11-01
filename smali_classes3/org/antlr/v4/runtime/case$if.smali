.class final Lorg/antlr/v4/runtime/case$if;
.super Lorg/antlr/v4/runtime/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final synthetic case:Z


# instance fields
.field private final try:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;[CI)V
    .locals 0

    const/4 p5, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/antlr/v4/runtime/case;-><init>(IILjava/lang/String;Lorg/antlr/v4/runtime/case$do;)V

    .line 3
    iput-object p4, p0, Lorg/antlr/v4/runtime/case$if;->try:[C

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;[CILorg/antlr/v4/runtime/case$do;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/antlr/v4/runtime/case$if;-><init>(IILjava/lang/String;[CI)V

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    const v1, 0xffff

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2
    iget v0, p0, Lorg/antlr/v4/runtime/case;->for:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v3

    .line 3
    iget p1, p0, Lorg/antlr/v4/runtime/case;->do:I

    if-lt v0, p1, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/case$if;->try:[C

    aget-char p1, p1, v0

    :goto_0
    and-int/2addr p1, v1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_3
    iget v0, p0, Lorg/antlr/v4/runtime/case;->for:I

    add-int/2addr v0, p1

    if-gez v0, :cond_4

    return v2

    .line 7
    :cond_4
    iget-object p1, p0, Lorg/antlr/v4/runtime/case$if;->try:[C

    aget-char p1, p1, v0

    goto :goto_0
.end method

.method public for()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/case$if;->try:[C

    return-object v0
.end method

.method public getText(Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p1, Landroid/support/v4/rn0;->do:I

    iget v1, p0, Lorg/antlr/v4/runtime/case;->do:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p1, Landroid/support/v4/rn0;->if:I

    iget p1, p1, Landroid/support/v4/rn0;->do:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lorg/antlr/v4/runtime/case;->do:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/antlr/v4/runtime/case$if;->try:[C

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
