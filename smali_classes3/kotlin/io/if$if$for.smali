.class final Lkotlin/io/if$if$for;
.super Lkotlin/io/if$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/if$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/io/if$if$for",
        "Lkotlin/io/if$do;",
        "Ljava/io/File;",
        "if",
        "",
        "Z",
        "rootVisited",
        "",
        "for",
        "[Ljava/io/File;",
        "fileList",
        "",
        "new",
        "I",
        "fileIndex",
        "rootDir",
        "<init>",
        "(Lkotlin/io/if$if;Ljava/io/File;)V",
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
.field private for:[Ljava/io/File;

.field private if:Z

.field private new:I

.field public final synthetic try:Lkotlin/io/if$if;


# direct methods
.method public constructor <init>(Lkotlin/io/if$if;Ljava/io/File;)V
    .locals 1
    .param p1    # Lkotlin/io/if$if;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lkotlin/io/if$if$for;->try:Lkotlin/io/if$if;

    invoke-direct {p0, p2}, Lkotlin/io/if$do;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public if()Ljava/io/File;
    .locals 10
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lkotlin/io/if$if$for;->if:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lkotlin/io/if$if$for;->try:Lkotlin/io/if$if;

    iget-object v0, v0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-static {v0}, Lkotlin/io/if;->for(Lkotlin/io/if;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lkotlin/io/if$if$for;->if:Z

    .line 4
    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lkotlin/io/if$if$for;->for:[Ljava/io/File;

    if-eqz v0, :cond_4

    iget v2, p0, Lkotlin/io/if$if$for;->new:I

    invoke-static {v0}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlin/io/if$if$for;->try:Lkotlin/io/if$if;

    iget-object v0, v0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-static {v0}, Lkotlin/io/if;->try(Lkotlin/io/if;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ub2;

    :cond_3
    return-object v1

    .line 7
    :cond_4
    :goto_0
    iget-object v0, p0, Lkotlin/io/if$if$for;->for:[Ljava/io/File;

    if-nez v0, :cond_8

    .line 8
    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lkotlin/io/if$if$for;->for:[Ljava/io/File;

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lkotlin/io/if$if$for;->try:Lkotlin/io/if$if;

    iget-object v0, v0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-static {v0}, Lkotlin/io/if;->new(Lkotlin/io/if;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v2

    new-instance v9, Landroid/support/v4/l;

    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v6, "Cannot list files in a directory"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/l;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILandroid/support/v4/rx;)V

    invoke-interface {v0, v2, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ub2;

    .line 10
    :cond_5
    iget-object v0, p0, Lkotlin/io/if$if$for;->for:[Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_8

    .line 11
    :cond_6
    iget-object v0, p0, Lkotlin/io/if$if$for;->try:Lkotlin/io/if$if;

    iget-object v0, v0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-static {v0}, Lkotlin/io/if;->try(Lkotlin/io/if;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ub2;

    :cond_7
    return-object v1

    .line 12
    :cond_8
    iget-object v0, p0, Lkotlin/io/if$if$for;->for:[Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    iget v1, p0, Lkotlin/io/if$if$for;->new:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/io/if$if$for;->new:I

    aget-object v0, v0, v1

    return-object v0
.end method
