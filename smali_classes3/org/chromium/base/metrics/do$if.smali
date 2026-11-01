.class Lorg/chromium/base/metrics/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/metrics/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/base/metrics/do$if;->do:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lorg/chromium/base/metrics/do$if;->if:J

    return-void
.end method


# virtual methods
.method public do(Lorg/chromium/base/metrics/UmaRecorder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/base/metrics/do$if;->do:Ljava/lang/String;

    iget-wide v1, p0, Lorg/chromium/base/metrics/do$if;->if:J

    invoke-interface {p1, v0, v1, v2}, Lorg/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V

    return-void
.end method
