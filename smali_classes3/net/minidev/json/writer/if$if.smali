.class public Lnet/minidev/json/writer/if$if;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/o;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lnet/minidev/asm/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/asm/do<",
            "TT;>;"
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
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    .line 2
    iput-object p2, p0, Lnet/minidev/json/writer/if$if;->do:Ljava/lang/Class;

    .line 3
    sget-object p1, Landroid/support/v4/wo0;->do:Landroid/support/v4/wo0$do;

    invoke-static {p2, p1}, Lnet/minidev/asm/do;->try(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/do;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/if$if;->if:Lnet/minidev/asm/do;

    .line 4
    invoke-virtual {p1}, Lnet/minidev/asm/do;->goto()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/if$if;->for:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/if$if;->if:Lnet/minidev/asm/do;

    invoke-virtual {v0}, Lnet/minidev/asm/do;->break()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/if$if;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/o;

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/o;->do()Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/if$if;->if:Lnet/minidev/asm/do;

    invoke-virtual {v0, p1, p2}, Lnet/minidev/asm/do;->for(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/if$if;->if:Lnet/minidev/asm/do;

    invoke-virtual {v0, p1, p2, p3}, Lnet/minidev/asm/do;->class(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 3
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
    iget-object v0, p0, Lnet/minidev/json/writer/if$if;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    invoke-virtual {v0}, Landroid/support/v4/o;->do()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/try;->for(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find Array \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' field in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/minidev/json/writer/if$if;->do:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 3
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
    iget-object v0, p0, Lnet/minidev/json/writer/if$if;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    invoke-virtual {v0}, Landroid/support/v4/o;->do()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/try;->for(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find Object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' field in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/minidev/json/writer/if$if;->do:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
