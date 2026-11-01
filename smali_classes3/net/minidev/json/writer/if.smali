.class public abstract Lnet/minidev/json/writer/if;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/writer/if$if;,
        Lnet/minidev/json/writer/if$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/minidev/json/writer/case<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static do:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/writer/if$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/if$do;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/if;->do:Lnet/minidev/json/writer/case;

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    return-void
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method
