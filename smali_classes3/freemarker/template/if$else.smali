.class Lfreemarker/template/if$else;
.super Lfreemarker/template/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;

.field private final length:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lfreemarker/template/if;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    .line 3
    iput-object p1, p0, Lfreemarker/template/if$else;->array:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lfreemarker/template/if$else;->length:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/if$else;-><init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lfreemarker/template/if$else;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/if$else;->array:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

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
    iget-object v0, p0, Lfreemarker/template/if$else;->array:Ljava/lang/Object;

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
    iget v0, p0, Lfreemarker/template/if$else;->length:I

    return v0
.end method
