.class public Lfreemarker/core/t$new;
.super Landroid/support/v4/nl2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method private constructor <init>(Lfreemarker/core/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Failed to set FreeMarker configuration setting "

    aput-object v2, v0, v1

    .line 2
    new-instance v1, Landroid/support/v4/fl2;

    invoke-direct {v1, p2}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    const-string v1, " to value "

    aput-object v1, v0, p2

    new-instance p2, Landroid/support/v4/fl2;

    invoke-direct {p2, p3}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p3, 0x3

    aput-object p2, v0, p3

    const/4 p2, 0x4

    const-string p3, "; see cause exception."

    aput-object p3, v0, p2

    invoke-direct {p0, p4, p1, v0}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/t$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lfreemarker/core/t$new;-><init>(Lfreemarker/core/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
