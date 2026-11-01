.class public Lcom/facebook/soloader/final;
.super Lcom/facebook/soloader/static;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/final$if;,
        Lcom/facebook/soloader/final$for;
    }
.end annotation


# instance fields
.field public final extends:Ljava/io/File;

.field public final finally:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/static;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/soloader/final;->extends:Ljava/io/File;

    .line 3
    iput-object p4, p0, Lcom/facebook/soloader/final;->finally:Ljava/lang/String;

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
    new-instance v0, Lcom/facebook/soloader/final$for;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/final$for;-><init>(Lcom/facebook/soloader/final;Lcom/facebook/soloader/static;)V

    return-object v0
.end method
