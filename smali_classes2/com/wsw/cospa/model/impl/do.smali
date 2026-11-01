.class public final synthetic Lcom/wsw/cospa/model/impl/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/impl/if$do;

.field public final synthetic for:Landroid/webkit/WebView;

.field public final synthetic if:Lio/reactivex/ObservableEmitter;

.field public final synthetic new:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/impl/if$do;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/model/impl/do;->do:Lcom/wsw/cospa/model/impl/if$do;

    iput-object p2, p0, Lcom/wsw/cospa/model/impl/do;->if:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lcom/wsw/cospa/model/impl/do;->for:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/wsw/cospa/model/impl/do;->new:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/wsw/cospa/model/impl/do;->do:Lcom/wsw/cospa/model/impl/if$do;

    iget-object v1, p0, Lcom/wsw/cospa/model/impl/do;->if:Lio/reactivex/ObservableEmitter;

    iget-object v2, p0, Lcom/wsw/cospa/model/impl/do;->for:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/wsw/cospa/model/impl/do;->new:Landroid/os/Handler;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/impl/if$do;->do(Lcom/wsw/cospa/model/impl/if$do;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method
