.class public final Lcom/facebook/soloader/const;
.super Lcom/facebook/soloader/static;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/const$for;,
        Lcom/facebook/soloader/const$if;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/static;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public throw()Lcom/facebook/soloader/static$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/soloader/const$if;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/const$if;-><init>(Lcom/facebook/soloader/const;Lcom/facebook/soloader/static;)V

    return-object v0
.end method
