.class Lorg/chromium/base/ObserverList$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ObserverList$RewindableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ObserverList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/ObserverList$RewindableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private do:I

.field private for:Z

.field private if:I

.field public final synthetic new:Lorg/chromium/base/ObserverList;


# direct methods
.method private constructor <init>(Lorg/chromium/base/ObserverList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/chromium/base/ObserverList;->do(Lorg/chromium/base/ObserverList;)V

    .line 4
    invoke-static {p1}, Lorg/chromium/base/ObserverList;->if(Lorg/chromium/base/ObserverList;)I

    move-result p1

    iput p1, p0, Lorg/chromium/base/ObserverList$if;->do:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/ObserverList;Lorg/chromium/base/ObserverList$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/ObserverList$if;-><init>(Lorg/chromium/base/ObserverList;)V

    return-void
.end method

.method private do()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/base/ObserverList$if;->for:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/base/ObserverList$if;->for:Z

    .line 3
    iget-object v0, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/base/ObserverList;->new(Lorg/chromium/base/ObserverList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/base/ObserverList$if;->if:I

    .line 2
    :goto_0
    iget v1, p0, Lorg/chromium/base/ObserverList$if;->do:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    .line 3
    invoke-static {v1, v0}, Lorg/chromium/base/ObserverList;->for(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lorg/chromium/base/ObserverList$if;->do:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lorg/chromium/base/ObserverList$if;->do()V

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lorg/chromium/base/ObserverList$if;->if:I

    iget v1, p0, Lorg/chromium/base/ObserverList$if;->do:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    invoke-static {v1, v0}, Lorg/chromium/base/ObserverList;->for(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lorg/chromium/base/ObserverList$if;->if:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ObserverList$if;->if:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lorg/chromium/base/ObserverList$if;->if:I

    iget v1, p0, Lorg/chromium/base/ObserverList$if;->do:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/chromium/base/ObserverList$if;->if:I

    invoke-static {v1, v0}, Lorg/chromium/base/ObserverList;->for(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/chromium/base/ObserverList$if;->do()V

    .line 5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public rewind()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/ObserverList$if;->do()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/base/ObserverList;->do(Lorg/chromium/base/ObserverList;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/base/ObserverList$if;->new:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/base/ObserverList;->if(Lorg/chromium/base/ObserverList;)I

    move-result v0

    iput v0, p0, Lorg/chromium/base/ObserverList$if;->do:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/chromium/base/ObserverList$if;->for:Z

    .line 5
    iput v0, p0, Lorg/chromium/base/ObserverList$if;->if:I

    return-void
.end method
