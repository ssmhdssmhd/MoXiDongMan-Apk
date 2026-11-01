.class public Lcom/google/common/collect/q1$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lcom/google/common/collect/y1;

.field private if:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/collect/y1;

    invoke-direct {v0}, Lcom/google/common/collect/y1;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/q1$if;->do:Lcom/google/common/collect/y1;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/q1$if;->if:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/q1$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/q1$if;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/collect/Interner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/q1$if;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/q1$if;->do:Lcom/google/common/collect/y1;

    invoke-virtual {v0}, Lcom/google/common/collect/y1;->class()Lcom/google/common/collect/y1;

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/q1$new;

    iget-object v1, p0, Lcom/google/common/collect/q1$if;->do:Lcom/google/common/collect/y1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/q1$new;-><init>(Lcom/google/common/collect/y1;Lcom/google/common/collect/q1$do;)V

    return-object v0
.end method

.method public for()Lcom/google/common/collect/q1$if;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/common/collect/q1$if;->if:Z

    return-object p0
.end method

.method public if(I)Lcom/google/common/collect/q1$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q1$if;->do:Lcom/google/common/collect/y1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y1;->do(I)Lcom/google/common/collect/y1;

    return-object p0
.end method

.method public new()Lcom/google/common/collect/q1$if;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "java.lang.ref.WeakReference"
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/common/collect/q1$if;->if:Z

    return-object p0
.end method
