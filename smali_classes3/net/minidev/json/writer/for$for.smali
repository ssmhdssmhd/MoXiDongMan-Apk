.class public Lnet/minidev/json/writer/for$for;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
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


# instance fields
.field public final do:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final for:Lnet/minidev/asm/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/asm/do<",
            "*>;"
        }
    .end annotation
.end field

.field public final if:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public new:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/try;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    .line 2
    iput-object p2, p0, Lnet/minidev/json/writer/for$for;->do:Ljava/lang/Class;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    const-class p1, Lnet/minidev/json/if;

    iput-object p1, p0, Lnet/minidev/json/writer/for$for;->if:Ljava/lang/Class;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lnet/minidev/json/writer/for$for;->if:Ljava/lang/Class;

    .line 6
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/for$for;->if:Ljava/lang/Class;

    sget-object p2, Landroid/support/v4/wo0;->do:Landroid/support/v4/wo0$do;

    invoke-static {p1, p2}, Lnet/minidev/asm/do;->try(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/do;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/for$for;->for:Lnet/minidev/asm/do;

    return-void
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/for$for;->for:Lnet/minidev/asm/do;

    invoke-virtual {v0}, Lnet/minidev/asm/do;->break()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/for$for;->do:Ljava/lang/Class;

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object p1, p1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object p1, p1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    return-object p1
.end method
