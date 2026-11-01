.class Lrx/Completable$new$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$new$do;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/Completable$new$do;


# direct methods
.method public constructor <init>(Lrx/Completable$new$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$new$do$do;->do:Lrx/Completable$new$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$new$do$do;->do:Lrx/Completable$new$do;

    invoke-virtual {v0}, Lrx/Completable$new$do;->do()V

    return-void
.end method
