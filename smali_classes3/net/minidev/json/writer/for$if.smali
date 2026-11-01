.class public Lnet/minidev/json/writer/for$if;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/for;
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
.field public final case:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final do:Ljava/lang/reflect/ParameterizedType;

.field public else:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
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

.field public final new:Lnet/minidev/asm/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/asm/do<",
            "*>;"
        }
    .end annotation
.end field

.field public final try:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/try;Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    .line 2
    iput-object p2, p0, Lnet/minidev/json/writer/for$if;->do:Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->if:Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-class p1, Lnet/minidev/json/do;

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->for:Ljava/lang/Class;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->for:Ljava/lang/Class;

    .line 7
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/for$if;->for:Ljava/lang/Class;

    sget-object v0, Landroid/support/v4/wo0;->do:Landroid/support/v4/wo0$do;

    invoke-static {p1, v0}, Lnet/minidev/asm/do;->try(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/do;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->new:Lnet/minidev/asm/do;

    .line 8
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->try:Ljava/lang/reflect/Type;

    .line 9
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 10
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->case:Ljava/lang/Class;

    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->case:Ljava/lang/Class;

    :goto_1
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lnet/minidev/json/writer/for$if;->case:Ljava/lang/Class;

    invoke-static {p2, v0}, Landroid/support/v4/wo0;->if(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/for$if;->new:Lnet/minidev/asm/do;

    invoke-virtual {v0}, Lnet/minidev/asm/do;->break()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 2
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
    iget-object p1, p0, Lnet/minidev/json/writer/for$if;->else:Lnet/minidev/json/writer/case;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object v0, p0, Lnet/minidev/json/writer/for$if;->do:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/try;->for(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/case;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->else:Lnet/minidev/json/writer/case;

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/for$if;->else:Lnet/minidev/json/writer/case;

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 2
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
    iget-object p1, p0, Lnet/minidev/json/writer/for$if;->else:Lnet/minidev/json/writer/case;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object v0, p0, Lnet/minidev/json/writer/for$if;->do:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/try;->for(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/case;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/for$if;->else:Lnet/minidev/json/writer/case;

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/for$if;->else:Lnet/minidev/json/writer/case;

    return-object p1
.end method
