.class Lorg/chromium/net/AndroidCellularSignalStrength$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/AndroidCellularSignalStrength;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/AndroidCellularSignalStrength;


# direct methods
.method public constructor <init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$do;->do:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/net/AndroidCellularSignalStrength$if;

    iget-object v1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$do;->do:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {v0, v1}, Lorg/chromium/net/AndroidCellularSignalStrength$if;-><init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V

    return-void
.end method
