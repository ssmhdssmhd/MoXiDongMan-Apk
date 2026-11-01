.class public Landroid/support/v4/dx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation


# instance fields
.field private final do:Ljava/lang/Object;

.field private final if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/dx;->do:Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/dx;->if:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dx;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dx;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/super;->for(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/dx;->do:Ljava/lang/Object;

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/dx;->if:Ljava/lang/Object;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/super$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
