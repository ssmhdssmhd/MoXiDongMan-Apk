.class public final synthetic Landroid/support/v4/rf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/WebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/rf2;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/rf2;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/wsw/cospa/activity/WebViewActivity;->return(Lcom/wsw/cospa/activity/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
