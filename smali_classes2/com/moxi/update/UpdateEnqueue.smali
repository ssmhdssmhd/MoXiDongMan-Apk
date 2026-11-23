.class public final Lcom/moxi/update/UpdateEnqueue;
.super Ljava/lang/Object;
.source "UpdateEnqueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moxi/update/UpdateEnqueue;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/moxi/update/UpdateEnqueue;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/moxi/update/UpdateEnqueue;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/moxi/update/UpdateEnqueue;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/moxi/update/UpdateDownloader;->enqueue(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
