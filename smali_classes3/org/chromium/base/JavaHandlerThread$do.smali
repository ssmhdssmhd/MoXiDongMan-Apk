.class Lorg/chromium/base/JavaHandlerThread$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/JavaHandlerThread;->startAndInitialize(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic for:Lorg/chromium/base/JavaHandlerThread;

.field public final synthetic if:J


# direct methods
.method public constructor <init>(Lorg/chromium/base/JavaHandlerThread;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/base/JavaHandlerThread$do;->for:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lorg/chromium/base/JavaHandlerThread$do;->do:J

    iput-wide p4, p0, Lorg/chromium/base/JavaHandlerThread$do;->if:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/final;->if()Lorg/chromium/base/JavaHandlerThread$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/JavaHandlerThread$do;->do:J

    iget-wide v3, p0, Lorg/chromium/base/JavaHandlerThread$do;->if:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/base/JavaHandlerThread$Natives;->initializeThread(JJ)V

    return-void
.end method
