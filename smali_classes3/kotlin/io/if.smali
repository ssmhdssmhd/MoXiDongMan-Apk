.class public final Lkotlin/io/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/if$for;,
        Lkotlin/io/if$do;,
        Lkotlin/io/if$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0011\u0015\u0018B\u008b\u0001\u0008\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0014\u0012\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005\u00128\u0010#\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\'\u0010(B\u001b\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\'\u0010)J\u000f\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0096\u0002J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0005J \u0010\r\u001a\u00020\u00002\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eR\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R$\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019RH\u0010#\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\t\u0018\u00010\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006*"
    }
    d2 = {
        "Lkotlin/io/if;",
        "Lkotlin/sequences/Sequence;",
        "Ljava/io/File;",
        "",
        "iterator",
        "Lkotlin/Function1;",
        "",
        "function",
        "goto",
        "Landroid/support/v4/ub2;",
        "break",
        "Lkotlin/Function2;",
        "Ljava/io/IOException;",
        "this",
        "",
        "depth",
        "else",
        "do",
        "Ljava/io/File;",
        "start",
        "Lkotlin/io/for;",
        "if",
        "Lkotlin/io/for;",
        "direction",
        "for",
        "Lkotlin/jvm/functions/Function1;",
        "onEnter",
        "new",
        "onLeave",
        "Landroid/support/v4/xb1;",
        "name",
        "f",
        "e",
        "try",
        "Lkotlin/jvm/functions/Function2;",
        "onFail",
        "case",
        "I",
        "maxDepth",
        "<init>",
        "(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V",
        "(Ljava/io/File;Lkotlin/io/for;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final case:I

.field private final do:Ljava/io/File;

.field private final for:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final if:Lkotlin/io/for;

.field private final new:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Landroid/support/v4/ub2;",
            ">;"
        }
    .end annotation
.end field

.field private final try:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Landroid/support/v4/ub2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/for;)V
    .locals 10
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Lkotlin/io/for;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v9}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;IILandroid/support/v4/rx;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/for;ILandroid/support/v4/rx;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    sget-object p2, Lkotlin/io/for;->TOP_DOWN:Lkotlin/io/for;

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/io/for;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Landroid/support/v4/ub2;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Landroid/support/v4/ub2;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/if;->do:Ljava/io/File;

    iput-object p2, p0, Lkotlin/io/if;->if:Lkotlin/io/for;

    iput-object p3, p0, Lkotlin/io/if;->for:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lkotlin/io/if;->new:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lkotlin/io/if;->try:Lkotlin/jvm/functions/Function2;

    iput p6, p0, Lkotlin/io/if;->case:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;IILandroid/support/v4/rx;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 2
    sget-object p2, Lkotlin/io/for;->TOP_DOWN:Lkotlin/io/for;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    return-void
.end method

.method public static final synthetic case(Lkotlin/io/if;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/if;->do:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic do(Lkotlin/io/if;)Lkotlin/io/for;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/if;->if:Lkotlin/io/for;

    return-object p0
.end method

.method public static final synthetic for(Lkotlin/io/if;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/if;->for:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic if(Lkotlin/io/if;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/io/if;->case:I

    return p0
.end method

.method public static final synthetic new(Lkotlin/io/if;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/if;->try:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic try(Lkotlin/io/if;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/io/if;->new:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final break(Lkotlin/jvm/functions/Function1;)Lkotlin/io/if;
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Landroid/support/v4/ub2;",
            ">;)",
            "Lkotlin/io/if;"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/io/if;

    iget-object v2, p0, Lkotlin/io/if;->do:Ljava/io/File;

    iget-object v3, p0, Lkotlin/io/if;->if:Lkotlin/io/for;

    iget-object v4, p0, Lkotlin/io/if;->for:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lkotlin/io/if;->try:Lkotlin/jvm/functions/Function2;

    iget v7, p0, Lkotlin/io/if;->case:I

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    return-object v0
.end method

.method public final else(I)Lkotlin/io/if;
    .locals 8
    .annotation build Landroid/support/v4/m41;
    .end annotation

    if-lez p1, :cond_0

    .line 1
    new-instance v7, Lkotlin/io/if;

    iget-object v1, p0, Lkotlin/io/if;->do:Ljava/io/File;

    iget-object v2, p0, Lkotlin/io/if;->if:Lkotlin/io/for;

    iget-object v3, p0, Lkotlin/io/if;->for:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lkotlin/io/if;->new:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lkotlin/io/if;->try:Lkotlin/jvm/functions/Function2;

    move-object v0, v7

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    return-object v7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depth must be positive, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final goto(Lkotlin/jvm/functions/Function1;)Lkotlin/io/if;
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/io/if;"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/io/if;

    iget-object v2, p0, Lkotlin/io/if;->do:Ljava/io/File;

    iget-object v3, p0, Lkotlin/io/if;->if:Lkotlin/io/for;

    iget-object v5, p0, Lkotlin/io/if;->new:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lkotlin/io/if;->try:Lkotlin/jvm/functions/Function2;

    iget v7, p0, Lkotlin/io/if;->case:I

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/io/if$if;

    invoke-direct {v0, p0}, Lkotlin/io/if$if;-><init>(Lkotlin/io/if;)V

    return-object v0
.end method

.method public final this(Lkotlin/jvm/functions/Function2;)Lkotlin/io/if;
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Landroid/support/v4/ub2;",
            ">;)",
            "Lkotlin/io/if;"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/io/if;

    iget-object v2, p0, Lkotlin/io/if;->do:Ljava/io/File;

    iget-object v3, p0, Lkotlin/io/if;->if:Lkotlin/io/for;

    iget-object v4, p0, Lkotlin/io/if;->for:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lkotlin/io/if;->new:Lkotlin/jvm/functions/Function1;

    iget v7, p0, Lkotlin/io/if;->case:I

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    return-object v0
.end method
