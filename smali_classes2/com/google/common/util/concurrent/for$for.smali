.class final Lcom/google/common/util/concurrent/for$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/for;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/for$for;->do:Lcom/google/common/util/concurrent/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/for;Lcom/google/common/util/concurrent/for$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/for$for;-><init>(Lcom/google/common/util/concurrent/for;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/util/concurrent/for$for;->do:Lcom/google/common/util/concurrent/for;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/for;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/for$for;->do:Lcom/google/common/util/concurrent/for;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/for;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/for$for;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
