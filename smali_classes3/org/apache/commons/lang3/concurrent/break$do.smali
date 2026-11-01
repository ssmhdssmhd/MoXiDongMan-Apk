.class Lorg/apache/commons/lang3/concurrent/break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/concurrent/break;->final()Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/apache/commons/lang3/concurrent/break;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/break;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/break$do;->do:Lorg/apache/commons/lang3/concurrent/break;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/break$do;->do:Lorg/apache/commons/lang3/concurrent/break;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/break;->if()V

    return-void
.end method
