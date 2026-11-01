.class public final synthetic Landroid/support/v4/jy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lretrofit2/Response;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicSourceBean;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/Response;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/jy;->do:Lretrofit2/Response;

    iput-object p2, p0, Landroid/support/v4/jy;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/jy;->do:Lretrofit2/Response;

    iget-object v1, p0, Landroid/support/v4/jy;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/const;->default(Lretrofit2/Response;Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
