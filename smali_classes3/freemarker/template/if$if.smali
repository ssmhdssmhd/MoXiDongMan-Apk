.class Lfreemarker/template/if$if;
.super Lfreemarker/template/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final array:[Z


# direct methods
.method private constructor <init>([ZLfreemarker/template/ObjectWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lfreemarker/template/if;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    .line 3
    iput-object p1, p0, Lfreemarker/template/if$if;->array:[Z

    return-void
.end method

.method public synthetic constructor <init>([ZLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/if$if;-><init>([ZLfreemarker/template/ObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lfreemarker/template/if$if;->array:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean p1, v0, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/if$if;->array:[Z

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/if$if;->array:[Z

    array-length v0, v0

    return v0
.end method
