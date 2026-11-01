.class final Lorg/mozilla/javascript/Hashtable$Iter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/mozilla/javascript/Hashtable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private pos:Lorg/mozilla/javascript/Hashtable$Entry;

.field public final synthetic this$0:Lorg/mozilla/javascript/Hashtable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Hashtable;Lorg/mozilla/javascript/Hashtable$Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable$Iter;->this$0:Lorg/mozilla/javascript/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/mozilla/javascript/Hashtable;->access$000(Lorg/mozilla/javascript/Hashtable;)Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object p1

    .line 3
    iput-object p2, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    return-void
.end method

.method private skipDeleted()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->deleted:Z

    if-eqz v1, :cond_0

    .line 2
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->skipDeleted()V

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->next()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->skipDeleted()V

    .line 3
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
