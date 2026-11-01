.class Lcom/wsw/cospa/service/CheckSourceService$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/service/CheckSourceService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/service/CheckSourceService;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/service/CheckSourceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/CheckSourceService$do;->do:Lcom/wsw/cospa/service/CheckSourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compositeDisposableAdd(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService$do;->do:Lcom/wsw/cospa/service/CheckSourceService;

    invoke-static {v0}, Lcom/wsw/cospa/service/CheckSourceService;->if(Lcom/wsw/cospa/service/CheckSourceService;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public getCheckIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService$do;->do:Lcom/wsw/cospa/service/CheckSourceService;

    invoke-static {v0}, Lcom/wsw/cospa/service/CheckSourceService;->for(Lcom/wsw/cospa/service/CheckSourceService;)I

    move-result v0

    return v0
.end method

.method public nextCheck()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService$do;->do:Lcom/wsw/cospa/service/CheckSourceService;

    invoke-static {v0}, Lcom/wsw/cospa/service/CheckSourceService;->do(Lcom/wsw/cospa/service/CheckSourceService;)V

    return-void
.end method
