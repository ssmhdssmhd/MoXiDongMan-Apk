.class final Lorg/apache/commons/lang3/time/new$do;
.super Lorg/apache/commons/lang3/time/new$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    return-void
.end method


# virtual methods
.method public for(Lorg/apache/commons/lang3/time/new;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    .line 2
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/time/new;->access$300(Lorg/apache/commons/lang3/time/new;I)I

    move-result p3

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
