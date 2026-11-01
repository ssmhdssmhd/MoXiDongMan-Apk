.class final enum Lio/reactivex/observers/do$if$new;
.super Lio/reactivex/observers/do$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/do$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/observers/do$if;-><init>(Ljava/lang/String;ILio/reactivex/observers/do$do;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lio/reactivex/observers/do$if;->sleep(I)V

    return-void
.end method
