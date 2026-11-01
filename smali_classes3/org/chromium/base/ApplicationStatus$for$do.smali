.class Lorg/chromium/base/ApplicationStatus$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ApplicationStatus$for;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/base/ApplicationStatus$for;


# direct methods
.method public constructor <init>(Lorg/chromium/base/ApplicationStatus$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/base/ApplicationStatus$for$do;->do:Lorg/chromium/base/ApplicationStatus$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/if;->if()Lorg/chromium/base/ApplicationStatus$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/base/ApplicationStatus$Natives;->onApplicationStateChange(I)V

    return-void
.end method
