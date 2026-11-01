.class final Lcom/google/common/util/concurrent/case$break;
.super Lcom/google/common/util/concurrent/transient$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "break"
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/util/concurrent/case;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/case$break;->try:Lcom/google/common/util/concurrent/case;

    .line 2
    invoke-static {p1}, Lcom/google/common/util/concurrent/case;->do(Lcom/google/common/util/concurrent/case;)Lcom/google/common/util/concurrent/transient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/transient$do;-><init>(Lcom/google/common/util/concurrent/transient;)V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case$break;->try:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$for;->isTerminal()Z

    move-result v0

    return v0
.end method
