.class public final synthetic Landroid/support/v4/tf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/WebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/tf2;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tf2;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/WebViewActivity;->native(Lcom/wsw/cospa/activity/WebViewActivity;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
